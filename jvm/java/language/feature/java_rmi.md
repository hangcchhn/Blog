
# Java RMI
> Remote Method Invocation

- 远程方法调用：允许在一个Java虚拟机中运行的对象调用在另一个Java虚拟机中运行的对象的方法
- 使用Java对象序列化机制在Java虚拟机之间按值传输对象
- 客户端调用服务端
- 分布式对象应用程序

- Java RMI是RPC的一种Java语言实现
- 分布式对象(Distributed Object)

---
## 实现

- 远程接口继承`Remote`接口，其中每个方法需要声明`throws RemoteException`抛出异常

```java
public interface RemoteInterface extends Remote {
    public TransportObject method(String string) throws RemoteException;
}
```

- 实现远程接口，同时继承`UnicastRemoteObject`类
```java
public class RemoteImplements extends UnicastRemoteObject implements RemoteInterface {

    protected RemoteImplements() throws RemoteException {
    }

    public TransportObject method(String string) throws Exception {
        // code
    }

```

- 传输对象实现`Serializable`接口
```java
public class TransportObject implements Serializable {
    private static final long serialVersionUID = 1L;
}


```


```java

RemoteInterface stub = (RemoteInterface) UnicastRemoteObject.exportObject(new RemoteImplements(), port);

```

- 服务端
```java
RemoteInterface remoteInterface = new RemoteImplements();
Naming.rebind("rmi://host:port/path", remoteInterface);
// Registry registry = LocateRegistry.getRegistry(host, port);
// registry.rebind("rmi://host:port/path", remoteInterface)


```

- 客户端
```java
RemoteInterface remoteInterface = (RemoteInterface) Naming.lookup("rmi://host:port/path");
// Registry registry = LocateRegistry.getRegistry(host, port);
// RemoteInterface remoteInterface = (RemoteInterface) registry.lookup("rmi://host:port/path");


```


- `UnicastRemoteObject.exportObject`静态方法返回远程对象，即客户端Client存根stub

- 服务端Server骨架skeleton