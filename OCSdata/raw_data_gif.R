library(magick)
# reading in each image
step1 = image_read("~/Desktop/Michael/images/OCSdata/OCS_data_folder.png")
step2 = image_read("~/Desktop/Michael/images/OCSdata/data_folder.png")
step3 = image_read("~/Desktop/Michael/images/OCSdata/raw_data_folder.png")
step4 = image_read("~/Desktop/Michael/images/OCSdata/raw_data_files.png")

# making vector of each image
img = c(step1, step2, step3, step4, step4)

# animating
raw_gif =  image_animate(img, delay = 100, optimize = TRUE)

# saving to file
image_write(raw_gif,"~/Desktop/Michael/images/OCSdata/raw_data_directory.gif")
