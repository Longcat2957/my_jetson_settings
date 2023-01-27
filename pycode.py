if __name__ == '__main__':
    import torch
    print(f"# Pytorch version = {torch.__version__}")
    print(f"# CUDA = {torch.cuda.is_available()}")
    
    import torchvision
    print(f"# torchvision version = {torchvision.__version__}")
    
    import cv2
    print(f"# OpenCV version = {cv2.__version__}")