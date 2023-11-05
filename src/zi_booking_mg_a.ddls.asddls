@EndUserText.label: 'Interfaz Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZI_BOOKING_mg_A
  as projection on ZR_BOOKING_mg_A
{
  key BookingUUID,
      TravelUUID,
      BookingID,
      BookingDate,
      CustomerID,
      AirlineID,
      ConnectionID,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      BookingStatus,
      LocalLastChangedAt,
      /* Associations */
      _BookingStatus,
      _Carrier,
      _Connection,
      _Customer,
      _Travel : redirected to parent ZI_TRAVEL_mg_A
}
