
var myArrayA: [Float32] = [1.0, 2.0, 3.0, 4.0]
var myArrayB: [Float32] = [10.0, 20.0, 30.0, 40.0]
var myArray: [Float32] = [0.0, 0.0, 0.0, 0.0]

@main
struct Main {

    static func main() {
       myArrayA.withUnsafeMutableBufferPointer { bufA in
       myArrayB.withUnsafeMutableBufferPointer { bufB in
       myArray.withUnsafeMutableBufferPointer { buf in
       
       guard let addrA = bufA.baseAddress else {
        print("Failed to get a valid base address.")
        return
        }

        guard let addrB = bufB.baseAddress else {
        print("Failed to get a valid base address.")
        return
        }

        guard let addr = buf.baseAddress else {
        print("Failed to get a valid base address.")
        return
        }

        arm_add_f32(addrA,addrB,addr,UInt32(myArrayA.count))
       
        for x: Float32 in myArray
        {
           printFloat(Float32(x))
        }
       }
       }
       }

        print("Hello world with Helium")
    }
}
