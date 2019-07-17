# Products API

Este programa este programa maneja el modelo Product

Product  (id, name, price, created_at, updated_at)

Es puede realizar las siguientes acciones

* Listar productos
* Crear productos
* Editar productos

Todo esto usando la ruta /products

La API para el modelo Product tiene los siguientes endpoints

* Listas productos  ```http://localhost:3000/api/v1/products```

* Crear productos  ```POST /api/v1/products```

* Editar productos ```PATCH /api/v1/products/:id```

Ejecuta ```bundle install```, ```rake db:migrate``` y ```rake db:seed```
