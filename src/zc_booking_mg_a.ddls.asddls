@EndUserText.label: 'Comportamiento Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: [ 'BookingID' ]
define view entity ZC_BOOKING_MG_A
  as projection on ZI_BOOKING_mg_A
{
  key BookingUUID,
      TravelUUID,
      @Search.defaultSearchElement: true
      BookingID,
      BookingDate,
      @ObjectModel.text.element: ['CustomerName']
      @Search.defaultSearchElement: true
      CustomerID,
      _Customer.LastName        as CustomerName,
      @Search.defaultSearchElement: true
      @ObjectModel.text.element: ['CarrierName']
      AirlineID,
      _Carrier.Name             as CarrierName,

      ConnectionID,
      FlightDate,
      FlightPrice,
      CurrencyCode,

      @ObjectModel.text.element: ['BookingStatusText']
      BookingStatus,
      _BookingStatus._Text.Text as BookingStatusText : localized,
      LocalLastChangedAt,
      /* Associations */
      _BookingStatus,
      _Carrier,
      _Connection,
      _Customer,
      _Travel : redirected to parent ZC_TRAVEL_MG_A
}
