# Java Loop List



## 使用loop删除数组元素





```java
List<String> stringList = new ArrayList<>();

stringList.add("hello");
stringList.add("world");
stringList.add("hello");
stringList.add("world");

stringList.add("hello");
stringList.add("hello");
stringList.add("world");
stringList.add("world");

System.out.println("list size 0 " + stringList.size());
System.out.println(stringList);
//list size 0 8
//[hello, world, hello, world, hello, hello, world, world]
```



## 使用index删除结果错误

```java
for (int i = 0; i < stringList.size(); i++) {
    String string = stringList.get(i);
    System.out.println("string 0 " + string );
    if (string.equals("hello")) {
    	stringList.remove(string);
    }
}
System.out.println("list size 1 " + stringList.size());
System.out.println(stringList);
//list size 1 5
//[world, world, hello, world, world]
```



## 使用foreach删除抛出异常

```java
for (String string : stringList) {
    System.out.println("string 0 " + string );
    if (string.equals("hello")) {
    	stringList.remove(string);
    }
}
System.out.println("list size 2 " + stringList.size());
System.out.println(stringList);
//Exception in thread "main" java.util.ConcurrentModificationException
//	at java.util.ArrayList$Itr.checkForComodification(ArrayList.java:901)
```





## 使用iterator删除结果正常

```java
Iterator<String> stringIterator = stringList.iterator();
while (stringIterator.hasNext()){
    String string = stringIterator.next();
    System.out.println("string 0 " + string );
    if(string.equals("hello")){
        // stringList.remove(string);//使用List错误
        stringIterator.remove();//使用Iterator正确
    }
}
System.out.println("list size 3 " + stringList.size());
System.out.println(stringList);
//list size 3 4
//[world, world, world, world]
```

