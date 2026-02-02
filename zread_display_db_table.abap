REPORT zread_display_db_table.

TYPES: BEGIN OF ty_flight,
       carrid TYPE sflight_carrid,
       connid TYPE sflight_connid,
       date TYPE sflight_fldate,
       price TYPE sflight_price,
       currency TYPE sflight_currency,
END TO ty_flight.

DATA: it_flight TYPE STANDARD TABLE OF ty_flight.
      wa_flight TYPE ty_flight.

START OF SELECTION.
      SELECT carrid connid date price currency
      INTO TABLE it_flight
      FROM sflight
      UP TO 10 ROWS.   

IF sy-subrc = 0

LOOP AI it_flight INTO wa_flight.
WRITE: /'carrier:', wa_flight-carrid,
       /'connid:', wa_flight-connid,
       /'Date:', wa_flight-fldate,
       /'Price:', wa_flight-price,
       /'Curr:', wa_flight-currency,
 ENDLOOP.

ELSE
WRITE: 'No Data Found in table SFLIGHT'.
ENDIF.

