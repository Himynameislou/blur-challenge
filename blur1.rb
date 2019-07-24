class Image
  def initialize(picture)
    @pic = picture
    # puts @pic
  end

  def output_image
    @pic.each do |subarray|
      puts subarray.join 
    end
  end

end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image