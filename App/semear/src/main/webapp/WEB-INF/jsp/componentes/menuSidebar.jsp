<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="overlay"></div>
<div class="col-sm-3 col-md-3 ">
	<nav id="sidebar">

		<div class="sidebar-header">
			<h3></h3>
		</div>

		<ul class="list-unstyled components">
			<li><a href="/"><i class="fa fa-home fa-lg"></i> Página Inicial</a></li>
			<li>
				<a href="#cursos" data-toggle="collapse" aria-expanded="true"><i class="fa fa-graduation-cap fa-lg"></i> Cursos Inscritos</a>
				<ul class="collapse in list-unstyled" id="cursos">
					<li><a href="/cursos/unievangelica/engenharia-civil">Engenharia Civil</a></li>
					<li class="active"><a href="/cursos/unievangelica/engenharia-de-computacao">Engenharia de Computação</a></li>
					<li><a href="/cursos/unievangelica/engenharia-de-software">Engenharia de Software</a></li>
				</ul>
			</li>
			<c:forEach var="role" items="${SPRING_SECURITY_CONTEXT.authentication.principal.authorities}">
				<c:if test="${role == 'ROLE_MANTER_PUBLICACAO'}">
					<li>
						<a href="#publicacoes" data-toggle="collapse" aria-expanded="false"><i class="fa fa-book fa-lg"></i> Moderar Publicações</a>
						<ul class="collapse list-unstyled" id="publicacoes">
							<li><a href="/publicacoes-pendentes">Publicações Pendentes</a></li>
						</ul>
					</li>
				</c:if>
			</c:forEach>
		</ul>
	</nav>
</div>

<!-- jQuery Nicescroll CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.6.8-fix/jquery.nicescroll.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    $("#sidebar").niceScroll({
        cursorcolor: '#53619d',
        cursorwidth: 4,
        cursorborder: 'none'
    });

    $('.overlay').on('click', function () {
       $('#sidebarCollapse').addClass('active');
       $('#sidebar').removeClass('active');
       $('.overlay').fadeOut();
    });

    $('#sidebarCollapse').on('click', function () {
       if($(this).hasClass('active')){
          $(this).removeClass('active');
          $('#sidebar').addClass('active');
          $('.overlay').fadeIn();
          $('.collapse.in').toggleClass('in');
          $('a[aria-expanded=true]').attr('aria-expanded', 'false');
       }else{
    	   $(this).addClass('active');
           $('#sidebar').removeClass('active');
           $('.overlay').fadeOut();
       }
       });
    
    if(($(window).width()) > 768){
    	$('#sidebarCollapse').addClass('active');
        $('#sidebar').removeClass('active');
        $('.overlay').fadeOut();
    };
});

</script>