<%-- 
    Document   : formEmpTurist
    Created on : 07-sep-2016, 11:02:07
    Author     : FARID SANTIAGO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<form id="emp_turistica">
    <div class="row" id="seguro_viaje">
        <div class="input-field col s3">
            <label>Seguro de viaje:</label>
        </div>
        <div class="input-field col s3">
            <p>
                <input name="group10" type="radio" id="No" value="No" checked="checked"/>
                <label for="No">No</label>
            </p>
        </div>
        <div class="input-field col s3">
            <p>
                <input name="group10" type="radio" id="Si" value="Si"/>
                <label for="Si">Si</label>
            </p>
        </div>
        <div class="input-field col s3">
            <input id="seguro_cual" type="text" class="" readonly="true" placeholder="¿cual?">

        </div>
        <input hidden="true" name="seg_viaje" id="seg_viaje" type="text" value="No" class="validate">
    </div>
    <div class="input-field col s3">
        <label for="reg_nac_turismo">Registro nacional de turismo</label> 
    </div>
    <div class="input-field col s3">
        <div class="switch">
            <label>
                No
                <input type="checkbox" id="reg_nac_turismo" name="reg_nac_turismo">
                <span class="lever"></span>
                Si
            </label>
        </div>
    </div>
    <div class="input-field col s3">
        <label for="poliza">Maneja algun tipo de póliza</label> 
    </div>
    <div class="input-field col s3">
        <div class="switch">
            <label>
                No
                <input type="checkbox" id="poliza" name="poliza">
                <span class="lever"></span>
                Si
            </label>
        </div>
    </div>
    <br><br><br>
    <div class="row" id="certificado_sostenibilidad">
        <div class="input-field col s2">
            <label>Certificados de sostenibilidad:</label>
        </div>
        <div class="input-field col s2">
            <p>
                <input name="group11" type="radio" id="noC" value="noC" checked="checked"/>
                <label for="noC">No</label>
            </p>
        </div>
        <div class="input-field col s2">
            <p>
                <input name="group11" type="radio" id="siC" value="siC"/>
                <label for="siC">Si</label>
            </p>
        </div>
        <div class="input-field col s2">
            <p>
                <input name="group11" type="radio" id="parcial" value="parcial"/>
                <label for="parcial">Parcial</label>
            </p>
        </div>
        <div class="input-field col s2">
            <p>
                <input name="group11" type="radio" id="general" value="general"/>
                <label for="general">General</label>
            </p>
        </div>
        <div class="input-field col s2">
            <p>
                <input name="group11" type="radio" id="nts" value="nts"/>
                <label for="nts">NTS</label>
            </p>
        </div>
        <input hidden="true" name="cer_sostenibilidad" id="cer_sostenibilidad" type="text" value="no" class="validate">
    </div>
    <div class="input-field col s3">
        <label for="rut">Se encuentra registrado como exportador de servicios(Rut):</label> 
    </div>
    <div class="input-field col s3">
        <div class="switch">
            <label>
                No
                <input type="checkbox" id="rut" name="rut">
                <span class="lever"></span>
                Si
            </label>
        </div>
    </div>
    <div class="input-field col s3">
        <label for="libro_migracion">Cuenta con libro de migración Colombia:</label> 
    </div>
    <div class="input-field col s3">
        <div class="switch">
            <label>
                No
                <input type="checkbox" id="libro_migracion" name="libro_migracion">
                <span class="lever"></span>
                Si
            </label>
        </div>
    </div>
    <br><br><br>
    <div class="input-field col s3">
        <label for="parafiscal">Paga impuestos al turismo(parafiscal):</label> 
    </div>
    <div class="input-field col s3">
        <div class="switch">
            <label>
                No
                <input type="checkbox" id="parafiscal" name="parafiscal">
                <span class="lever"></span>
                Si
            </label>
        </div>
    </div>
    <div class="input-field col s3">
        <label for="cod_etica">Cuenta con código de ética:</label> 
    </div>
    <div class="input-field col s3">
        <div class="switch">
            <label>
                No
                <input type="checkbox" id="cod_etica" name="cod_etica">
                <span class="lever"></span>
                Si
            </label>
        </div>
    </div>
    <br><br><br><br>
    <div class="row">
        <div class="input-field col s6">
            <input required id="grupo_etnico_empresario" type="text" class="validate">
            <label for="grupo_etnico_empresario">Grupo étnico del empresario:</label>
        </div>
        <div class="input-field col s6">
            <input id="ced_extranjeria" type="number" min="0" class="validate">
            <label for="ced_extranjeria">Cédula de extranjería(opcional):</label>
        </div>
    </div>
    <br>
    <div class="row" id="tipo_emp_turistica">
        <div class="input-field col s4">
            <label>Tipo de empresa turistica</label>
        </div>
        <div class="input-field col s8"></div>
        <br></br>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="alojamiento" value="alojamiento"/>
                <label for="alojamiento">Alojamiento</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="transporte" value="transporte" />
                <label for="transporte">Transporte</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="agen_Viaje" value="agencia de viaje"/>
                <label for="agen_viaje">Agencia de viaje</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="receptivo" value="receptivo"/>
                <label for="receptivo">Receptivo</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="guia" value="guia"/>
                <label for="guia">Guía</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="rep_turistica" value="representacion turistica"/>
                <label for="rep_turistica">Representación turístic</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="cap_ahorro" value="captadora de ahorros"/>
                <label for="cap_ahorro">Captadora de ahorros</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="bar_rest" value="bar y restaurante"/>
                <label for="bar_rest">Bar y restaurante</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="inter_vaca" value="intercambio vacacional"/>
                <label for="inter_vaca">Intercambio vacacional</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="pro_tiem_comp" value="promotores tiempo compartido"/>
                <label for="pro_tiem_comp">Promotores tiempo compartido</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="comer_comp" value="comercializadora compartido"/>
                <label for="comer_comp">Comercializadora compartido</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="operador" value="operador congreso, ferias, etc"/>
                <label for="operador">Operador congreso, ferias, etc</label>
            </p>
        </div>
    </div>

    <div class="row" id="tipo_alojamiento">
        <div class="input-field col s4">
            <label>Tipo de alojamiento</label>
        </div>
        <div class="input-field col s8"></div>
        <br></br>   
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="hotel" value="hotel"/>
                <label for="hotel">Hotel</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="apart_hotel" value="aparta hotel"/>
                <label for="apart_hotel">Aparta hotel</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="receptivo" value="posada turistica"/>
                <label for="receptivo">Posada turística</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="apart_turi" value="apartamento turistico"/>
                <label for="apart_turi">Apartamento turístico</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="pos_nat" value="posada nativa"/>
                <label for="pos_nat">Posada nativa</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="apart" value="apartamentos"/>
                <label for="apart">Apartamento</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="aloj_rural" value="alojamiento rural"/>
                <label for="aloj_rural">Alojamiento rural</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="alb_ref_host" value="albergue, refugio, hostal"/>
                <label for="alb_ref_host">Albergue, refugio, hostal</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="campamento" value="campamento"/>
                <label for="campamento">Campamento</label>
            </p>
        </div>
    </div>


    <div class="row" id="tipo_turismo_desa">
        <div class="input-field col s4">
            <label>Tipo de turismo que desarrolla</label>
        </div>
        <div class="input-field col s8"></div>
        <br></br>   
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="naturaleza" value="naturaleza"/>
                <label for="naturaleza">Naturaleza</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="cultural" value="cultura"/>
                <label for="cultural">Cultural</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="aventura" value="aventura"/>
                <label for="aventura">Aventura</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="nautico" value="nautico"/>
                <label for="nautico">Náutico</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="sol_playa" value="sol y playa"/>
                <label for="sol_playa">Sol y playa</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="sal_bienes" value="salud y bienestar"/>
                <label for="sal_bienes">Salud y bienestar</label>
            </p>
        </div>
        <div class="input-field col s4">
            <p>
                <input type="checkbox" id="cong_conv" value="congreso y convenciones"/>
                <label for="cong_conv">Congreso y convenciones</label>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <textarea  required id="observaciones" class="materialize-textarea"></textarea>
            <label for="observaciones">Observaciones</label>
        </div>
    </div>
</form>
<script type="text/javascript">
    $(document).ready(function () {

        $('#seguro_viaje').click(function () {
            var var_name = $("input[name='group10']:checked").val();

            $('#seg_viaje').val(var_name);

            if (var_name === 'Si') {

                $('#seguro_cual').prop("readonly", false);
            } else {

                $('#seguro_cual').prop("readonly", true);
            }

        });


        $('#certificado_sostenibilidad').click(function () {

            var var_name = $("input[name='group11']:checked").val();

            $('#cer_sostenibilidad').val(var_name);

        });

    });
</script>

