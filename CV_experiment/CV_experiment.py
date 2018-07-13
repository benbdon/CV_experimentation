import cv2

# Load an color image in grayscale
img = cv2.imread('test.png',0)

# Display image
print 'Shape: '
print img.shape
print 'Type: '
print img.dtype
cv2.imshow('image',img)
cv2.waitKey(0)
cv2.destroyAllWindows()