# NORTHWIND
## SQL - excel gorsellestirme

Bu proje, Northwind SQL veritabanı kullanılarak gerçekleştirilen bir dizi analiz ve görselleştirmeyi içermektedir. 
Analizler, veritabanındaki farklı veri kümelerini inceleyerek iş süreçleri, satış performansı ve müşteri davranışları hakkında derinlemesine bilgi sağlamayı amaçlamaktadır.

#### En Çok Sipariş Veren Müşteriler
Bu analiz, en çok sipariş veren müşterileri listelemektedir. Her müşterinin kimlik numarası (CustomerID), adı (ContactName) ve verdiği sipariş sayısı (order count) bu sorgu ile elde edilir.
 
### En Çok Sipariş Veren Müşteriler
Bu analiz, en çok sipariş veren müşterileri listelemektedir. Her müşterinin kimlik numarası (CustomerID), adı (ContactName) ve verdiği sipariş sayısı (order count) bu sorgu ile elde edilir. Sıralama, en çok sipariş veren müşteri en üstte olacak şekilde yapılır.

### En Çok Satan Ürünler
Bu analiz, hangi ürünlerin en çok satıldığını belirler. Her ürünün kimlik numarası (ProductID), adı (ProductName) ve toplam satılan miktarı (total sold quantity) bu sorgu ile elde edilir. Sıralama, ürün kimlik numarasına göre yapılır.

### En Yüksek Gelir Getiren Ürünler
Bu analiz, en yüksek gelir getiren ürünleri belirler. Her ürünün kimlik numarası (ProductID), adı (ProductName) ve toplam gelir miktarı (total income) bu sorgu ile elde edilir. Gelir, satılan miktar ile birim fiyatın çarpılmasıyla hesaplanır. Sıralama, ürün kimlik numarasına göre yapılır.

### En İyi Performans Gösteren Satış Görevlisi
Bu analiz, en iyi performans gösteren satış görevlisini belirler. Her çalışanın kimlik numarası (EmployeeID), adı (FirstName), soyadı (LastName) ve işleme aldığı sipariş sayısı (performance) bu sorgu ile elde edilir. Sıralama, çalışan kimlik numarasına göre yapılır.

### En Çok Satış Yapılan Şehirler
Bu analiz, en çok satış yapılan şehirleri belirler. Her şehrin adı (ShipCity) ve o şehirde yapılan toplam sipariş sayısı (sold quantity) bu sorgu ile elde edilir. Sıralama, şehir adına göre yapılır.

### Tedarikçi Başına Toplam Satış Miktarı ve Toplam Gelir
Bu analiz, her tedarikçinin sağladığı ürünlerin toplam satış miktarını ve toplam gelirini belirler. Her tedarikçinin kimlik numarası (SupplierID), şirket adı (CompanyName), yetkili kişi adı (ContactName), toplam satış miktarı (total sold quantity) ve toplam gelir (total price) bu sorgu ile elde edilir. Sıralama, tedarikçi kimlik numarasına göre yapılır.

### Kategori Başına Toplam Satış Miktarı ve Toplam Gelir
Bu analiz, her kategorinin sağladığı ürünlerin toplam satış miktarını ve toplam gelirini belirler. Her kategorinin kimlik numarası (CategoryID), adı (CategoryName), toplam satış miktarı (total sold quantity) ve toplam gelir (total income) bu sorgu ile elde edilir. Sıralama, kategori kimlik numarasına göre yapılır.

### Yıllara Göre Toplam Satış Miktarı ve Toplam Gelir
Bu analiz, yıllara göre toplam satış miktarını ve toplam gelirini belirler. Her yıl (years), toplam satış miktarı (total sold quantity) ve toplam gelir (total income) bu sorgu ile elde edilir. Sıralama, yıla göre yapılır.

### Müşteri Başına Toplam Sipariş Sayısı, Toplam Harcama ve En Son Sipariş Tarihi
Bu analiz, her müşterinin toplam sipariş sayısını, toplam harcamasını ve en son sipariş tarihini belirler. Her müşterinin kimlik numarası (CustomerID), adı (ContactName), toplam sipariş sayısı (total number orders), toplam harcama miktarı (total spending price) ve en son sipariş tarihi (last order date) bu sorgu ile elde edilir. Sıralama, toplam sipariş sayısına göre yapılır.

### Çalışan Başına Toplam Sipariş Sayısı, Toplam Satış Miktarı ve Toplam Gelir
Bu analiz, her çalışanın toplam sipariş sayısını, toplam satış miktarını ve toplam gelirini belirler. Her çalışanın kimlik numarası (EmployeeID), adı (FirstName), soyadı (LastName), toplam sipariş sayısı (total sold quantity) ve toplam gelir (total income) bu sorgu ile elde edilir. Sıralama, çalışan kimlik numarasına göre yapılır.
