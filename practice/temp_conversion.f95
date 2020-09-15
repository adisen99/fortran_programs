! Aditya Sengupta
!! Conversion of temperature

program temp_conversion

implicit none

real :: T_c, T_f, T_K
character :: input_unit

print*, "Welcome to the Temperature Conversion Module !"

print*, "Input temperature in Celcius [C], Farheneit [F] or Kelvin [K] ?"

read*, input_unit

if (input_unit == "C") then
    print*, "Enter the temperature in Celcius"
    read*, T_c
    T_f = ((9.0/5.0) * T_c) + 32.0 
    T_K = T_c + 273.0

    print*, "You entered the temperature =", T_c
    print*, "temperature in Farheneit is =", T_f
    print*, "temperature in Kelvin is =", T_K
    
else if (input_unit == "F") then
    print*, "Enter the temperature in Farheneit"
    read*, T_f
    T_c = (T_f - 32.0)*(5.0/9.0)
    T_K = T_c + 273.0

    print*, "You entered the temperature =", T_f
    print*, "temperature in Celsius is =", T_c
    print*, "temperature in Kelvin is =", T_K
    
else if (input_unit == "K") then

    print*, "Enter the temperature in Kelvin"
    read*, T_K
    T_c = T_K - 273.0
    T_f = ((9.0/5.0) * T_c) + 32.0

    print*, "You entered the temperature =", T_K
    print*, "temperature in Celsius is =", T_c
    print*, "temperature in Farheneit is =", T_f
    
end if
    
end program temp_conversion
