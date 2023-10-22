<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>CRUD Cidades</title>

   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
   <div class="container-fluid">
      <div class="jumbotron mt-5">
         <h1>Gerenciamento de Cidades</h1>
         <p>Um CRUD para criar, alterar, excluir e listar cidades</p>
      </div>
      <form action="/criar" method="POST">
         <div class="form-group">
            <label for="nome">Cidade:</label>
            <input value="${(cidadeAtual.nome)!}" name="nome" type="text" class="form-control" placeholder="Informe o nome da cidade" id="nome">
         </div>
         <div class="form-group">
            <label for="estado">Estado:</label>
            <input value="${(cidadeAtual.estado)!}" name="estado" type="text" class="form-control" placeholder="Informe o estado ao qual a cidade pertence" id="estado">
         </div>
         <button type="submit" class="btn btn-primary">Criar</button>
      </form>
      <table class="table.table.table-striped.table-hover.mt-5">
         <thead class="thead-dark">
            <tr>
               <th>Nome</th>
               <th>Estado</th>
               <th>Ações</th>
            </tr>
         </thead>
         <tbody>
            <#list listaCidades as cidade>
               <tr>
                  <td>${cidade.nome}</td>
                  <td>${cidade.estado}</td>
                  <td>
                     <div class="d-flex d-justify-content-center">
                        <a href="/preparaAlterar?nome=${cidade.nome}&estado=${cidade.estado}"" class="btn btn-warning mr-3">Alterar</a>
                        <a href="/excluir?nome=${cidade.nome}&estado=${cidade.estado}" class="btn btn-danger mr-3">Excluir</a>
                     </div>
                  </td>
               </tr>
            </#list>
         </tbody>
      </table>

   </div>   
</body>
</html>

