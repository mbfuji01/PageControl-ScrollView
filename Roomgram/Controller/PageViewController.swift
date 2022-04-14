
import Foundation
import UIKit

class PageViewController: UIViewController {
    

    private let scrollView = UIScrollView()
    var images = [UIImageView]()
    var imageArray = [UIImage]()
    
    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 4
        return pageControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.frame = view.frame
        scrollView.delegate = self
        pageControl.addTarget(self,
                            action: #selector(pageControlDidChanged(_:)),
                            for: .valueChanged)
        scrollView.backgroundColor = .systemTeal
        view.addSubview(scrollView)
        view.addSubview(pageControl)
    }
    
    @objc private func pageControlDidChanged(_ sender: UIPageControl) {
        let current = sender.currentPage
        scrollView.setContentOffset(CGPoint(x: CGFloat(current)*view.frame.size.width,
                                        y: 0), animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pageControl.frame = CGRect(x: 10, y: view.frame.size.height-100, width: view.frame.size.width-20, height: 70)
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        
        if scrollView.subviews.count == 2 {
            configureScrollView()
        }
    }
    
    private func configureScrollView() {
        imageArray = [#imageLiteral(resourceName: "scrollViewFirst"), #imageLiteral(resourceName: "scrollViewTwo"), #imageLiteral(resourceName: "scrollViewThree"), #imageLiteral(resourceName: "scrollViewFour")]
        
        for i in 0..<imageArray.count {
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = (self.view.frame.width) * CGFloat(i)
            imageView.frame = CGRect(x: xPosition+110, y: view.frame.height/2.5, width: 200, height: 200)
            scrollView.contentSize.width = scrollView.frame.width * CGFloat(i + 1)
            scrollView.addSubview(imageView)
        }
    }
    func handleDeepLink(_ deepLink: DeepLink) {
        switch deepLink {
        case .home:
            performSegue(withIdentifier: "catchTest", sender: self)
        case .scan:
            performSegue(withIdentifier: "catchTest", sender: self)
        }
    }
}


//MARK: - UIScrollViewDelegate
extension PageViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(floorf(Float(scrollView.contentOffset.x) / Float(scrollView.frame.size.width)))
    }
}

