# Java Thread Runnable



## Thread

```java
//Thread类的run方法
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

```java
//Runnable接口的run方法
Thread runnable = new Thread(new Runnable() {
    @Override
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





## Thread_Runnable

```java
// 运行的是Thread类的run方法，而不是Runable接口的run方法
new Thread(new Runnable() {
    @Override
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



