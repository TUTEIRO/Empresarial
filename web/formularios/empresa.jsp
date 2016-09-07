<%-- 
    Document   : Empresa
    Created on : 6/09/2016, 01:48:45 PM
    Author     : tuto2
--%>

<jsp:include page="../plantillas/header.jsp"/>

<div class="row">
    <div class="col s12">
        <ul class="tabs">
            <li class="tab col s6"><a class="active" href="#contacto"><span class="green-text" style="font-weight: bold;">CONTACTO</span></a></li>
            <li class="tab col s6"><a href="#empresa"><span class="green-text" style="font-weight: bold;">EMPRESA</span></a></li>
        </ul>
    </div>
    <div id="contacto" class="col s12">
        <jsp:include page="formCon.jsp"/>

        <div class="row">
            <div class="input-field col s12">
                <button class="btn waves-effect waves-light" type="submit" name="action">Continuar
                    <i class="mdi-content-send right"></i>
                </button>
            </div>
        </div>
        </form>
    </div>   

</div>
</form>
</div>
</div>
</div>
</div>

</section>



<div id="empresa" class="col s12">
    <jsp:include page="formEmpre.jsp"/>
    <div class="row">
        <div class="input-field col s12">
            <button class="btn waves-effect waves-light" type="submit" name="action">Enviar
                <i class="mdi-content-send right"></i>
            </button>
        </div>
    </div>
</div>

</form>
</div>
</div>

</div>
</div>
</section>

<jsp:include page="../plantillas/footer.jsp"/>