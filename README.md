# Lab03-NguyenTranNgocHan

Project Spring Boot (MVC) sử dụng Thymeleaf.

Chạy project:
- Sử dụng Maven wrapper (nếu có): `./mvnw spring-boot:run` (Windows: `mvnw.cmd spring-boot:run`).
- Hoặc build: `mvn -DskipTests package` rồi chạy `java -jar target/*.jar`.

Ứng dụng expose:
- Truy cập `http://localhost:8080/` → link tới ` /books ` để xem danh sách.

Cấu trúc:
- `controller/` chứa `BookController`
- `service/` chứa `BookService` (in-memory)
- `model/` chứa `Book` (POJO)
- `templates/` Thymeleaf views
- `static/` chứa CSS

Bạn muốn mình thêm REST API, lưu trữ bằng JPA hoặc tests không? Hãy cho biết hướng bạn muốn mở rộng. 🚀