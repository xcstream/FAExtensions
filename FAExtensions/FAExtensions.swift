//  FAExtensions
//  Created by xcstream on 10/30/14.
//  Copyright (c) 2014 xcstream. All rights reserved.



import UIKit
let associated:NSMutableDictionary  = NSMutableDictionary()
class blockholder{
    var dragEnabled = false;
    var onclickblock: ()->() = {}
    var onTouchDownBlock: ()->() = {}
    init(){
    }
}
extension UIView{
    
    var dragEnabled: Bool{
        get {
            var bh:blockholder? = associated[self.hash] as blockholder?
            if(bh != nil){
                return bh!.dragEnabled
            }
            return false
        }
        set(newValue) {
            var bh  = blockholder();
            bh.dragEnabled = newValue
            associated[self.hash] = bh
        }
    }
    
    var onclickblock: ()->(){
        get {
            var bh:blockholder? = associated[self.hash] as blockholder?
            if(bh != nil){
                return bh!.onclickblock
            }
            return {}
        }
        set(newValue) {
            var bh  = blockholder();
            bh.onclickblock = newValue
            associated[self.hash] = bh
        }
    }
    
    
    var onTouchDownBlock: ()->(){
        get {
            var bh:blockholder? = associated[self.hash] as blockholder?
            if(bh != nil){
                return bh!.onTouchDownBlock
            }
            return {}
        }
        set(newValue) {
            var bh  = blockholder();
            bh.onTouchDownBlock = newValue
            associated[self.hash] = bh
        }
    }
    
    
    
    
    
    func onClick(block:()->()){
        onclickblock = block
        var tap = UITapGestureRecognizer(target: self, action:Selector("clicked"))
        self.addGestureRecognizer(tap)
    }
    
    func onTouchDown(block:()->()){
        onTouchDownBlock = block;
    }
    
    func onMessage(message:NSString,block:()->()){
        onclickblock = block
        var tap = UITapGestureRecognizer(target: self, action:Selector("clicked"))
        self.addGestureRecognizer(tap)
    }
    
    func clicked(){
        onclickblock()
    }
    
    public override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        if(self.dragEnabled){
        }
        if(onTouchDownBlock != nil){
            onTouchDownBlock()
        }
    }
    public override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
    
    }
    func rotateDegree (degree:Float ,duration:NSTimeInterval ){
        var a = [2,"3",4]
        a[1] = 2
    }
  
    func clean(){
        onTouchDownBlock = {};
        onclickblock = {};
    }
    
}