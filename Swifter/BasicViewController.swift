//
// Created by Nic on 2018/4/19.
// Copyright (c) 2018 UpChina. All rights reserved.
//

import UIKit

class BasicViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Basic"
        testMutating()
    }

    func testMutating() {
        print("testMutating")

    }
}

struct basicStruct {
    var color = UIColor.blue

    // 对于struct 和 enum，func添加mutating修饰可以修改成员变量
    mutating func changeColor () {
        color = .red
    }

}
