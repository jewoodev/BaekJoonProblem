T = int(input())
for i in range(T):
    n = bin(int(input()))[2:] # bin함수는 10진수 숫자를 2진수 문자열로 바꾼다. 반환값이 문자열임에 주목!
    for idx, val in enumerate(n[::-1]): # enumerate는 enumerate.md를 확인할 것!
        if val == '1':
            print(idx, end = ' ')
