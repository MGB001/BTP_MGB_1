@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cliente Libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_clnts_lib_mg as select from ztclnt_lib_mg
{
  key id_libro                    as IdLibro,
      count( distinct id_cliente) as Ventas
}
group by
  id_libro;
