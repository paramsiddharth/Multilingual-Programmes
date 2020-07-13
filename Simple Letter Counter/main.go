package main

import (
    "fmt"
    "bufio"
    "os"
    "unicode"
    "strings"
)

func main() {
    reader := bufio.NewReader(os.Stdin)
    str, _ := reader.ReadString('\n')
    str = strings.TrimSpace(str)
    letterArr := []rune(str)
    
    // fmt.Println(letterArr)
    var count = make(map[rune]int)
    
    for i := 0; i < len(letterArr); i++ {
        ru := unicode.ToLower(letterArr[i])
        
        if _, ok := count[ru]; ok {
            count[ru]++
        } else {
            count[ru] = 1
        }
    }
    
    for i := 97; i < 123; i++ {
         ru := rune(i)
         
         if _, ok := count[ru]; ok {
            fmt.Printf("%c -> %d\n", ru, count[ru])
         } else {
             fmt.Printf("%c -> 0\n", ru)
         }
    }
}