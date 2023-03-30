using Plots, LaTeXStrings, ImageMagick, HTTP, ImageCore

function conv_2(input, filter)
    input_r, input_c = size(input)
    filter_r, filter_c = size(filter)
    result = zeros(input_r-filter_r+1, input_c-filter_c+1)
    result_r, result_c = size(result)
    for i in 1:result_r
        for j in 1:result_c
            for k in 1:filter_r 
                for l in 1:filter_c 
                    result[i,j] += input[i+k-1,j+l-1]*filter[k,l]
                end
            end
        end
    end
    return result
end

function URL_to_Grayscale(url)
	r = HTTP.get(url)
	buffer = IOBuffer(r.body)
	x = ImageMagick.load(buffer)
	gray = Gray.(x)
end


pl(kernel) = heatmap(kernel,xlabel = "X", ylabel = "Y", title = L"G(x,y) = \frac{1}{2\pi\sigma^2}e^-\frac{x^2+y^2}{2\sigma^2}\n", size =(700,700), aspect_ratio=1)

G(x,y,σ) = (1/(2*π*σ^(2))*ℯ^(-(x^2+y^2)/(2*σ^2)))


Kernel(n,σ) = [G(x,y,σ) for x=Vector(-n:n),y=Vector(-n:n), σ = σ]
H = Kernel(5,2.1)
p1 = pl(H)

gray = URL_to_Grayscale("https://tourtraveltibet.com/wp-content/uploads/2018/01/Potala.jpg")
blurred = conv_2(gray, H)
p2 = plot( mosaicview(gray, blurred; nrow=1), size = (700,500))
display(plot(p1,p2, layout = (2,1),size = (1200,1200)))
print("Hit enter when finished")
readline() 

