/*
 * This is the main IDL file for status reports to and from Mission Control
 */

// Includes
include "DAVUser.thrift"
include "Vehicle.thrift"

/*
 * The StatusReport service is used by Captains to send updates to Mission Control
 *
 * @TODO: Define exceptions it should throw in case of invalid authenticationToken
 */
service StatusReport {

    bool is_registered(
        1: string authenticationToken,
        2: DAVUser.DAVUser vehicleID,
    )

    void report_status(
        1: string authenticationToken,
        2: DAVUser.DAVUser vehicleID,
        3: Vehicle.VehicleState state,
    )

}