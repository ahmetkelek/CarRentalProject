# CarRentalProject
- Proje, çok katmanlı mimari ve SOLID ilkelerine uygun olarak C# ile geliştirildi. 

- Entity Framework kullanılarak CRUD işlemleri gerçekleştirilmiştir. 

- Projede veritabanı için MSSQL Localdb kullanıldı.

- Kimlik doğrulama ve yetkilendirme özellikleri eklendi.

- Transaction,Cache,Validation ve Performance yönetimi eklendi.

- IoC ve Autofac desteği eklendi.

# Kurumsal Katmanlı Mimari

- **Entities**: Projenin varlık katmanıdır.Veritabanı tabloları ile proje nesneleri eşleştirilir.Nesnelerin özelliklerini filtrelemek veya genişletmek için DTO'lar kullanılır.

- **DataAccess**: Projeyi ve projenin veritabanına bağlı CRUD(Create,Read,Update,Delete) işlemlerini içermektedir.
- **Business**: İş katmanıdır ve projenin veri kontrollerini, IoC ve yetkilendirme işlemlerini içerir.
- **Core**: Projenin çekirdek katmanıdır. Genel ve evrensel işlemler için kullanılır.
- **WebAPI**: API katmanıdır ve HTTP metodlarını içerir.

# İçerik
- Entity Framework
- SQL Server
- Repository Pattern
- Result Structure
 - Success
    - Success Result
    - Success Data Result
 - Error
   - Error Result
   - Error Data Result
- Aspect Oriented Programming
  - Cross Cutting Concerns
    - Security
      - Encryption
	  - Hashing
	  - Jwt
	- Caching
	  - Microsoft
	- Logging
	  - Log4Net
	    - File Logger
	    - Database Logger
	- Performance
	- Transaction
	- Validation
	  - Fluent Validation
- Autofac
  - IoC 
  - Interceptors
- Extensions
  - ICollection
  - Claims Principal
  - IServiceCollection
- Restful API

