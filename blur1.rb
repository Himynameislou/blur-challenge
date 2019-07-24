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

# Notes for Self
# When adding .new to object make sure you 'def initialize' in the class for that object.
# Store your data in a variable so that your 'end' doesn't dump it.
# Make sure to add .join to make image come out as required by challenge.