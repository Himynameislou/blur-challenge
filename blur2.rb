class Image

  def initialize(picture)
    @pic = picture
  end

  def output_image
    @pic.each do |row|
      puts row.join
    end 
  end

  def blurdist(distance=1)
    distance.times do
      blur!
    end
  end

  private

    def blur!
      blur = []
      @pic.each_with_index do |row, i|
        row.each_with_index do |x, row_i|
          blur << [i, row_i] if x == 1
        end
      end

      blur.each do |coord|
        @pic[coord[0]][coord[1] + 1] = 1 if coord[1] + 1 <= @pic[coord[0]].length - 1
        @pic[coord[0]][coord[1] - 1] = 1 if coord[1] - 1 >= 0
        @pic[coord[0] + 1][coord[1]] = 1 if coord[0] + 1 <= @pic.length - 1
        @pic[coord[0] - 1][coord[1]] = 1 if coord[0] - 1 >= 0
      end
    end
    
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.blurdist
image.output_image



# Notes for Self
# When adding .new to object make sure you 'def initialize' in the class for that object.
# Store your data in a variable so that your 'end' doesn't dump it.
# Make sure to add .join to make image come out as required by challenge.


    # puts "-----------"
    # @pic[2][3] = 7
    # puts @pic[2][3]



# Help from Mentor and youtube/google