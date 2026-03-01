fun main() {
    // 1. Syntax Error
    println("Hello World" // Missing closing parenthesis → Syntax Error

    // 2. Type Error
    val number: Int = "123" // Assigning String to Int → Type Mismatch Error

    // 3. Null Pointer Error
    var text: String? = null
    println(text!!.length) // Force unwrapping null → NullPointerException

    // 4. Runtime Error (Array Index Out of Bounds)
    val arr = arrayOf(1, 2, 3)
    println(arr[5]) // Index 5 does not exist → ArrayIndexOutOfBoundsException

    // 5. Logic Error (Code runs but result is wrong)
    val result = 10 / 3
    println(result) // Prints 3 instead of 3.333... → Logic Error
}