.globl string_to_integer
string_to_integer:
    push %ebp
    mov %esp, %ebp
    push %esi

    # Инициализация результата (в %eax) нулём
    xor %eax, %eax

    # Загрузка указателя на строку
    mov 8(%ebp), %esi

    # Очистка старших битов %ecx для использования в умножении
    xor %ecx, %ecx

    # Преобразование
string_to_integer_loop:
    # Загрузка символа
    mov (%esi), %cl

    # Выход из цикла при встрече нулевого символа
    test %cl, %cl
    jz string_to_integer_loop_end

    # Умножение результата на 10
    mov $10, %edx
    mul %edx

    # Преобразование символа в число и добавление к результату
    sub $'0', %cl
    add %ecx, %eax

    # Переход к следующему символу
    inc %esi
    jmp string_to_integer_loop

string_to_integer_loop_end:
    # Эпилог функции
    pop %esi
    leave
    ret