# Spring Data Reactive




```java


public interface UserReactiveCrudRepository extends ReactiveCrudRepository<User, String> {
    Flux<User> findByUserId(String userId);
}

```