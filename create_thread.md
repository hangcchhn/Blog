# Create Thread
> 创建线程

## Thread
> 继承Thread类的run方法
```java
Thread thread = new Thread() {
    @Override
    public void run() {
        while (true) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("thread=" + Thread.currentThread().getName());
        }
    }
};
thread.start();

```

## Runnable
>实现Runnable接口的run方法 

```java
Thread runnable = new Thread(new Runnable() {
    public void run() {
        while (true) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("runnable=" + Thread.currentThread().getName());
        }
    }
});
runnable.start();

```
## Thread&Runnable
> 继承Thread类和实现Runnable接口
```java
// 运行的是Thread类的run方法
// 而不是Runable接口的run方法
new Thread(new Runnable() {
    public void run() {
        while (true) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Runable=" + Thread.currentThread().getName());
        }
    }
}) {
    @Override
    public void run() {
        while (true) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Thread=" + Thread.currentThread().getName());
        }
    }
}.start();

```
