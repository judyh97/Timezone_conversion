#' Calculate flight duration.
#'
#' @param arrival_time Arrival time at the destination.
#' @param arrival_tz Timezone of the destination.
#' @param departure_time Departure time at the origin.
#' @param departure_tz Timezone of the origin.
#' @return Time elapsed between the departure time and arrival time in the timezone of the destination.
#' @examples
#' flight_duration("2017-08-20 10:30", "Asia/Hong_Kong", "2017-08-19 09:00", "Africa/Johannesburg")
#' flight_duration("2017-08-20 10:30", "Asia/Hong_Kong")
#' @export
options(warn = -1)
flight_duration <- function(arrival_time, arrival_tz, departure_time = Sys.time(), departure_tz = Sys.timezone()) {
  DepTime <- format(as.POSIXct(departure_time, tz = departure_tz), tz = arrival_tz, usetz = TRUE)
  ArrTime <- format(as.POSIXct(arrival_time, tz = arrival_tz), tz = arrival_tz, usetz = TRUE)
  as.POSIXct(ArrTime) - as.POSIXct(DepTime)
}


