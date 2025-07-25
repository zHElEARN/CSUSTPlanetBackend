import Fluent
import Vapor

struct ElectricityBindingDTO: Content {
    var id: UUID?
    var studentId: String
    var deviceToken: String
    var isDebug: Bool
    var campus: String
    var building: String
    var room: String
    var scheduleHour: Int
    var scheduleMinute: Int

    func toModel() -> ElectricityBinding {
        return ElectricityBinding(
            studentId: studentId,
            deviceToken: deviceToken,
            isDebug: isDebug,
            campus: campus,
            building: building,
            room: room,
            scheduleHour: scheduleHour,
            scheduleMinute: scheduleMinute
        )
    }
}
