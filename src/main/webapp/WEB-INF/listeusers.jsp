<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gestion des inventaires</title>
<style type="text/css">
/* ===== GLOBAL ===== */
body {
    background: linear-gradient(135deg, #020617, #0f172a);
    font-family: 'Segoe UI', Tahoma, sans-serif;
    color: #e5e7eb;
}

/* ===== CONTAINER FORM ===== */
.form-container {
    background: #111827;
    padding: 30px;
    border-radius: 16px;
    width: 420px;
    box-shadow: 0 20px 40px rgba(0,0,0,0.6);
    margin: 0 5%;
}

/* ===== TITRES ===== */
.form-container h2 {
    text-align: center;
    margin-bottom: 25px;
    font-weight: 600;
    color: #f8fafc;
}

/* ===== LABELS ===== */
label {
    display: block;
    margin-bottom: 6px;
    color: #94a3b8;
    font-size: 14px;
}

/* ===== INPUTS ===== */
input {
    width: 100%;
    padding: 12px 14px;
    border-radius: 10px;
    border: 1px solid #1e293b;
    background-color: #020617;
    color: #e5e7eb;
    font-size: 15px;
    transition: all 0.3s ease;
}

input::placeholder {
    color: #64748b;
}

input:focus {
    outline: none;
    border-color: #22c55e;
    box-shadow: 0 0 0 2px rgba(34,197,94,0.3);
}

/* ===== BOUTONS ===== */
.btn {
    width: 100%;
    padding: 12px;
    border-radius: 12px;
    border: none;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
}

/* Valider */
.btn-success {
    background: linear-gradient(135deg, #22c55e, #16a34a);
    color: #022c22;
}

.btn-success:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(34,197,94,0.4);
}

/* Annuler */
.btn-danger {
    background: linear-gradient(135deg, #ef4444, #dc2626);
    color: #fff;
    margin-top: 10px;
}

.btn-danger:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(239,68,68,0.4);
}

/* ===== TABLE ===== */
table {
    width: 80%;
    border-collapse: collapse;
    margin: 40px 10%;
    background: #020617;
    border-radius: 14px;
    overflow: hidden;
}

th {
    background: #111827;
    color: #22c55e;
    padding: 14px;
    text-align: left;
    font-size: 14px;
}

td {
    padding: 12px 14px;
    border-bottom: 1px solid #1e293b;
    color: #e5e7eb;
    font-size: 14px;
}

tr:hover {
    background: #0f172a;
}

/* ===== ACTIONS ===== */
a {
    color: #38bdf8;
    text-decoration: none;
    font-weight: 500;
}

a:hover {
    text-decoration: underline;
}

</style>
</head>
<body>
	<section>
	 <c:if test="${!empty luser }">
	<table class="table table-striped table-dark table-hover container text-center table-bordered caption-top table-rounded-2 " >
		<caption class="text-center fw-bolder display-3 w-full">LISTE DES UTILISATEURS</caption>
		<tr>
			<th>Id user</th>
			<th>nom</th>
			<th>Prenom</th>
			<th>Email</th>
			<th>Telephone</th>
			<th>Actions</th>
		</tr>
		<c:forEach items="${ luser }" var ="user">
			<tr>
				<td>${user.id} </td>
				<td>${user.nom}</td>
				<td>${user.prenom} </td>
				<td>${user.email}</td>
				<td>${user.telephone}  </td>
				<td>
					<a href="ModifierUser?param=${user.id }">Modifier</a>
					<a href="SupprimerUser?param=${user.id }" onclick="return confirm('Etez-vous sur')">Supprimer</a>
				</td>
				
			<tr>
		</c:forEach>
	</table>
</c:if> 
</section>
<div>
	<button><a href="inscription.jsp">Ajouter un utilisateur</a></button>
	<a href="${pageContext.request.contextPath }/index.jsp">Accueil</a>
	
</div>
</body>
</html>