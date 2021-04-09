def count(n):
    cnt = 0
    for i in range(1, n + 1):
        for j in range(i + 1, n + 1):
            for k in range(i + 1, n + 2):
                cnt += 1
    print(cnt)


def main():
    for i in range(1, 10):
        count(i)
        print((i + 1) * (i - 1) * (i) / 3)

if __name__ == "__main__":
    main()