<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GubeeChallenge</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div>
		<main class="produto" >
			<form action="showProduct" method="get" class="productForm" >
				<div>
					<label>Escolha o market:</label>
					<input type="checkbox" value="Ecommerce" name="anyMarket">Ecommerce
					<input type="checkbox" value="ERP" name="anyMarket">ERP
					<input type="checkbox" value="Loja Fisica" name="anyMarket">Loja F�sica
					<input type="checkbox" value="Telecom" name="anyMarket">Telecom
					<input type="checkbox" value="Venda Direta" name="anyMarket">Venda Direta
					<input type="checkbox" value="Mobile First" name="anyMarket">Mobile First
					<input type="checkbox" value="Digital Onboarding" name="anyMarket">Digital Onboarding
					<input type="checkbox" value="Lojista que nao desejam possuir ecommerce" name="anyMarket">Lojista que n�o desejam possuir ecommerce

				</div>
				<div>
					<label>Escolha o stack:</label>
					<input type="checkbox" value="Java 10" name="anyStack">Java10
					<input type="checkbox" value="Kotlin" name="anyStack">Kotlin
					<input type="checkbox" value="Kafka" name="anyStack">Kafka
					<input type="checkbox" value="Event Stream" name="anyStack">Event Stream
					<input type="checkbox" value="Redis" name="anyStack">Redis
					<input type="checkbox" value="Big Data Analytics" name="anyStack">Big Data Analytics
					<input type="checkbox" value="NodeJS" name="anyStack">NodeJS
					<input type="checkbox" value="MongoDB" name="anyStack">MongoDB
					<input type="checkbox" value="Hadoop" name="anyStack">Hadoop
					 <input type="checkbox" value="Cassandra" name="anyStack">Cassandra
					<input type="checkbox" value="Pig" name="any">Pig
				</div>
				<div>
					<input id="produtoButton" type="submit" name="command" value="ShowProduct" class="btn btn-dark">
				</div>
				<br>
				<table id="product"  style='border:0px' class="table table-striped table-bordered">
					<thead>
					   <tr>
						 <th scope="col">Id</th>
						 <th scope="col">Nome do Produto</th>
						 <th scope="col">Descri��o</th>
					   </tr>
					 </thead>
					<c:forEach items="${products}" var="item">
					  <tbody style='border:0'>
						<tr>
						  <th style='font-weight:normal' ><c:out value="${item}"/></th>
						  <th style='font-weight:normal'><c:out value="${item}"/></th>
						  <th style='font-weight:normal'><c:out value="${item}"/></th>
						</tr>
					  </tbody>
					</c:forEach>
				</table>
			</form>
		</main>
	</div>
</body>
<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
</html>