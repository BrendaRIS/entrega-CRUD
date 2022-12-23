<jsp:include page="WEB-INF/pages/comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Ver a ${alumnoAVer.nombreCompleto}" />
</jsp:include>

<jsp:include page="WEB-INF/pages/comunes/navbar.jsp" />

<<section class="container py-3">
    <div class="row">
        <h1 class="h3">Visualización de alumno</h1>
        <p class="lead">Estás viendo a ${alumnoAVer.nombreCompleto}.".</p>
    </div>

    <div class="row align-items-center px-4 mt-3">
        <div class="col-md-5 col-lg-4" >
            <div class="card h-100">
                <jsp:include page="partes/dataCardAlumno.jsp">
                    <jsp:param name="fotoAlumno" value="${alumnoAVer.foto}" />
                    <jsp:param name="nombreCompletoAlumno" value="${alumnoAVer.nombreCompleto}" />
                </jsp:include>
            </div>
        </div>
        <div class="col-md-7 col-lg-8" >
                <div class="row">
                    <div class="col-sm-6 mb-3">
                        <p>Nombre: "${alumnoAVer.nombre}" </p>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <p>Apellido: "${alumnoAVer.apellido}" </p>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <p>Mail: "${alumnoAVer.mail}" </p>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <p>Fecha de Nacimiento: "${alumnoAVer.fechaNacimiento}" </p>
                    </div>
                    <div class="col-12 mb-3">
                        <p>Edad: "${requestScope.laEdadDelAlumno}" años</p>
                    </div>
                    <div class="col-12">
                            <a href="${pageContext.request.contextPath}/app?accion=update&id=${alumnoAVer.id}" class="btn btn-secondary">Editar</a>
                            <a href="${pageContext.request.contextPath}/app?accion=delete&id=${alumnoAVer.id}" class="btn btn-secondary">Borrar</a>
                        </div>

                    
                </div>
                <div class="row justify-content-end mt-2">
                    <div class="col-12">
                        <div class="float-end">
                            <a href="${pageContext.request.contextPath}/app" class="btn btn-secondary">Volver atrás</a>
                            <button type="submit" class="btn btn-warning">Confirmar cambios</button>
                        </div>
                    </div>
                </div>
        </div>
    </div>

</section>


<jsp:include page="WEB-INF/pages/comunes/footer.jsp"/>
<jsp:include page="WEB-INF/pages/comunes/finHTML.jsp"/>