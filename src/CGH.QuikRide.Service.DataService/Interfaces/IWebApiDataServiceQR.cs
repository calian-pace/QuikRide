// <auto-generated> - Template:WebApiDataServiceInterface, Version:1.1, Id:1ea810ed-61a7-443b-97f2-da5b30311e75
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CodeGenHero.DataService;
using xDTO = CGH.QuikRide.DTO.QR;

namespace CGH.QuikRide.API.Client.Interface
{
	public partial interface IWebApiDataServiceQR : IWebApiDataServiceBase
	{
		#region GetAllPages

		Task<IList<xDTO.Driver>> GetAllPagesDriversAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.Feedback>> GetAllPagesFeedbacksAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.FeedbackType>> GetAllPagesFeedbackTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.GenderType>> GetAllPagesGenderTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.Holiday>> GetAllPagesHolidaysAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.LanguageType>> GetAllPagesLanguageTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.Location>> GetAllPagesLocationsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.NotificationType>> GetAllPagesNotificationTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.Reservation>> GetAllPagesReservationsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.ReservationCancellationReasonType>> GetAllPagesReservationCancellationReasonTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.ReservationRequest>> GetAllPagesReservationRequestsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.ReservationRequestCancellationReasonType>> GetAllPagesReservationRequestCancellationReasonTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.ReservationRequestOption>> GetAllPagesReservationRequestOptionsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.ReservationRequestStatusType>> GetAllPagesReservationRequestStatusTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.ReservationStatusType>> GetAllPagesReservationStatusTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.Ride>> GetAllPagesRidesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.RidePosition>> GetAllPagesRidePositionsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.RideServiceType>> GetAllPagesRideServiceTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.User>> GetAllPagesUsersAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.UsersLocation>> GetAllPagesUsersLocationsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.UsersNotificationType>> GetAllPagesUsersNotificationTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.Vehicle>> GetAllPagesVehiclesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.VehicleFeatureType>> GetAllPagesVehicleFeatureTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.VehicleStatusType>> GetAllPagesVehicleStatusTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.VehicleType>> GetAllPagesVehicleTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.VehicleTypeVehicleFeatureType>> GetAllPagesVehicleTypeVehicleFeatureTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);

		Task<IList<xDTO.VehicleVehicleFeatureType>> GetAllPagesVehicleVehicleFeatureTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null);


		#endregion GetAllPages


		#region GetPageData

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Driver>>>> GetDriversAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Driver>>>> GetDriversAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Feedback>>>> GetFeedbacksAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Feedback>>>> GetFeedbacksAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.FeedbackType>>>> GetFeedbackTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.FeedbackType>>>> GetFeedbackTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.GenderType>>>> GetGenderTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.GenderType>>>> GetGenderTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Holiday>>>> GetHolidaysAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Holiday>>>> GetHolidaysAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.LanguageType>>>> GetLanguageTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.LanguageType>>>> GetLanguageTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Location>>>> GetLocationsAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Location>>>> GetLocationsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.NotificationType>>>> GetNotificationTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.NotificationType>>>> GetNotificationTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Reservation>>>> GetReservationsAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Reservation>>>> GetReservationsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationCancellationReasonType>>>> GetReservationCancellationReasonTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationCancellationReasonType>>>> GetReservationCancellationReasonTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationRequest>>>> GetReservationRequestsAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationRequest>>>> GetReservationRequestsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationRequestCancellationReasonType>>>> GetReservationRequestCancellationReasonTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationRequestCancellationReasonType>>>> GetReservationRequestCancellationReasonTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationRequestOption>>>> GetReservationRequestOptionsAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationRequestOption>>>> GetReservationRequestOptionsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationRequestStatusType>>>> GetReservationRequestStatusTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationRequestStatusType>>>> GetReservationRequestStatusTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationStatusType>>>> GetReservationStatusTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.ReservationStatusType>>>> GetReservationStatusTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Ride>>>> GetRidesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Ride>>>> GetRidesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.RidePosition>>>> GetRidePositionsAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.RidePosition>>>> GetRidePositionsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.RideServiceType>>>> GetRideServiceTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.RideServiceType>>>> GetRideServiceTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.User>>>> GetUsersAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.User>>>> GetUsersAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.UsersLocation>>>> GetUsersLocationsAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.UsersLocation>>>> GetUsersLocationsAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.UsersNotificationType>>>> GetUsersNotificationTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.UsersNotificationType>>>> GetUsersNotificationTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Vehicle>>>> GetVehiclesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.Vehicle>>>> GetVehiclesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.VehicleFeatureType>>>> GetVehicleFeatureTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.VehicleFeatureType>>>> GetVehicleFeatureTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.VehicleStatusType>>>> GetVehicleStatusTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.VehicleStatusType>>>> GetVehicleStatusTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.VehicleType>>>> GetVehicleTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.VehicleType>>>> GetVehicleTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.VehicleTypeVehicleFeatureType>>>> GetVehicleTypeVehicleFeatureTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.VehicleTypeVehicleFeatureType>>>> GetVehicleTypeVehicleFeatureTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.VehicleVehicleFeatureType>>>> GetVehicleVehicleFeatureTypesAsync(IPageDataRequest pageDataRequest);

		Task<IHttpCallResultCGHT<IPageDataT<IList<xDTO.VehicleVehicleFeatureType>>>> GetVehicleVehicleFeatureTypesAsync(DateTime? minModifiedUtcDate = null, bool? isDeleted = null, string sort = null, int page = 1, int pageSize = 100);


		#endregion GetPageData


		#region Get By PK

		Task<IHttpCallResultCGHT<xDTO.Driver>> GetDriverAsync(int driverId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.Feedback>> GetFeedbackAsync(System.Guid feedbackId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.FeedbackType>> GetFeedbackTypeAsync(int feedbackTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.GenderType>> GetGenderTypeAsync(int genderTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.Holiday>> GetHolidayAsync(int holidayId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.LanguageType>> GetLanguageTypeAsync(int languageTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.Location>> GetLocationAsync(System.Guid locationId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.NotificationType>> GetNotificationTypeAsync(int notificationTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.Reservation>> GetReservationAsync(System.Guid reservationId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.ReservationCancellationReasonType>> GetReservationCancellationReasonTypeAsync(int reservationCancellationReasonTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequest>> GetReservationRequestAsync(System.Guid reservationRequestId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestCancellationReasonType>> GetReservationRequestCancellationReasonTypeAsync(int reservationRequestCancellationReasonTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestOption>> GetReservationRequestOptionAsync(int reservationRequestOptionId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestStatusType>> GetReservationRequestStatusTypeAsync(int reservationRequestStatusTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.ReservationStatusType>> GetReservationStatusTypeAsync(int reservationStatusTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.Ride>> GetRideAsync(System.Guid rideId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.RidePosition>> GetRidePositionAsync(System.Guid ridePositionId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.RideServiceType>> GetRideServiceTypeAsync(int rideServiceTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.User>> GetUserAsync(int userId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.UsersLocation>> GetUsersLocationAsync(int userId, System.Guid locationId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.UsersNotificationType>> GetUsersNotificationTypeAsync(int userId, int notificationTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.Vehicle>> GetVehicleAsync(int vehicleId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.VehicleFeatureType>> GetVehicleFeatureTypeAsync(int vehicleFeatureTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.VehicleStatusType>> GetVehicleStatusTypeAsync(int vehicleStatusTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.VehicleType>> GetVehicleTypeAsync(int vehicleTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.VehicleTypeVehicleFeatureType>> GetVehicleTypeVehicleFeatureTypeAsync(int vehicleTypeId, int vehicleFeatureTypeId, int numChildLevels);

		Task<IHttpCallResultCGHT<xDTO.VehicleVehicleFeatureType>> GetVehicleVehicleFeatureTypeAsync(int vehicleId, int vehicleFeatureTypeId, int numChildLevels);


		#endregion Get By PK


		#region Create

		Task<IHttpCallResultCGHT<xDTO.Driver>> CreateDriverAsync(xDTO.Driver item);

		Task<IHttpCallResultCGHT<xDTO.Feedback>> CreateFeedbackAsync(xDTO.Feedback item);

		Task<IHttpCallResultCGHT<xDTO.FeedbackType>> CreateFeedbackTypeAsync(xDTO.FeedbackType item);

		Task<IHttpCallResultCGHT<xDTO.GenderType>> CreateGenderTypeAsync(xDTO.GenderType item);

		Task<IHttpCallResultCGHT<xDTO.Holiday>> CreateHolidayAsync(xDTO.Holiday item);

		Task<IHttpCallResultCGHT<xDTO.LanguageType>> CreateLanguageTypeAsync(xDTO.LanguageType item);

		Task<IHttpCallResultCGHT<xDTO.Location>> CreateLocationAsync(xDTO.Location item);

		Task<IHttpCallResultCGHT<xDTO.NotificationType>> CreateNotificationTypeAsync(xDTO.NotificationType item);

		Task<IHttpCallResultCGHT<xDTO.Reservation>> CreateReservationAsync(xDTO.Reservation item);

		Task<IHttpCallResultCGHT<xDTO.ReservationCancellationReasonType>> CreateReservationCancellationReasonTypeAsync(xDTO.ReservationCancellationReasonType item);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequest>> CreateReservationRequestAsync(xDTO.ReservationRequest item);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestCancellationReasonType>> CreateReservationRequestCancellationReasonTypeAsync(xDTO.ReservationRequestCancellationReasonType item);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestOption>> CreateReservationRequestOptionAsync(xDTO.ReservationRequestOption item);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestStatusType>> CreateReservationRequestStatusTypeAsync(xDTO.ReservationRequestStatusType item);

		Task<IHttpCallResultCGHT<xDTO.ReservationStatusType>> CreateReservationStatusTypeAsync(xDTO.ReservationStatusType item);

		Task<IHttpCallResultCGHT<xDTO.Ride>> CreateRideAsync(xDTO.Ride item);

		Task<IHttpCallResultCGHT<xDTO.RidePosition>> CreateRidePositionAsync(xDTO.RidePosition item);

		Task<IHttpCallResultCGHT<xDTO.RideServiceType>> CreateRideServiceTypeAsync(xDTO.RideServiceType item);

		Task<IHttpCallResultCGHT<xDTO.User>> CreateUserAsync(xDTO.User item);

		Task<IHttpCallResultCGHT<xDTO.UsersLocation>> CreateUsersLocationAsync(xDTO.UsersLocation item);

		Task<IHttpCallResultCGHT<xDTO.UsersNotificationType>> CreateUsersNotificationTypeAsync(xDTO.UsersNotificationType item);

		Task<IHttpCallResultCGHT<xDTO.Vehicle>> CreateVehicleAsync(xDTO.Vehicle item);

		Task<IHttpCallResultCGHT<xDTO.VehicleFeatureType>> CreateVehicleFeatureTypeAsync(xDTO.VehicleFeatureType item);

		Task<IHttpCallResultCGHT<xDTO.VehicleStatusType>> CreateVehicleStatusTypeAsync(xDTO.VehicleStatusType item);

		Task<IHttpCallResultCGHT<xDTO.VehicleType>> CreateVehicleTypeAsync(xDTO.VehicleType item);

		Task<IHttpCallResultCGHT<xDTO.VehicleTypeVehicleFeatureType>> CreateVehicleTypeVehicleFeatureTypeAsync(xDTO.VehicleTypeVehicleFeatureType item);

		Task<IHttpCallResultCGHT<xDTO.VehicleVehicleFeatureType>> CreateVehicleVehicleFeatureTypeAsync(xDTO.VehicleVehicleFeatureType item);


		#endregion Create


		#region Update

		Task<IHttpCallResultCGHT<xDTO.Driver>> UpdateDriverAsync(xDTO.Driver item);

		Task<IHttpCallResultCGHT<xDTO.Feedback>> UpdateFeedbackAsync(xDTO.Feedback item);

		Task<IHttpCallResultCGHT<xDTO.FeedbackType>> UpdateFeedbackTypeAsync(xDTO.FeedbackType item);

		Task<IHttpCallResultCGHT<xDTO.GenderType>> UpdateGenderTypeAsync(xDTO.GenderType item);

		Task<IHttpCallResultCGHT<xDTO.Holiday>> UpdateHolidayAsync(xDTO.Holiday item);

		Task<IHttpCallResultCGHT<xDTO.LanguageType>> UpdateLanguageTypeAsync(xDTO.LanguageType item);

		Task<IHttpCallResultCGHT<xDTO.Location>> UpdateLocationAsync(xDTO.Location item);

		Task<IHttpCallResultCGHT<xDTO.NotificationType>> UpdateNotificationTypeAsync(xDTO.NotificationType item);

		Task<IHttpCallResultCGHT<xDTO.Reservation>> UpdateReservationAsync(xDTO.Reservation item);

		Task<IHttpCallResultCGHT<xDTO.ReservationCancellationReasonType>> UpdateReservationCancellationReasonTypeAsync(xDTO.ReservationCancellationReasonType item);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequest>> UpdateReservationRequestAsync(xDTO.ReservationRequest item);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestCancellationReasonType>> UpdateReservationRequestCancellationReasonTypeAsync(xDTO.ReservationRequestCancellationReasonType item);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestOption>> UpdateReservationRequestOptionAsync(xDTO.ReservationRequestOption item);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestStatusType>> UpdateReservationRequestStatusTypeAsync(xDTO.ReservationRequestStatusType item);

		Task<IHttpCallResultCGHT<xDTO.ReservationStatusType>> UpdateReservationStatusTypeAsync(xDTO.ReservationStatusType item);

		Task<IHttpCallResultCGHT<xDTO.Ride>> UpdateRideAsync(xDTO.Ride item);

		Task<IHttpCallResultCGHT<xDTO.RidePosition>> UpdateRidePositionAsync(xDTO.RidePosition item);

		Task<IHttpCallResultCGHT<xDTO.RideServiceType>> UpdateRideServiceTypeAsync(xDTO.RideServiceType item);

		Task<IHttpCallResultCGHT<xDTO.User>> UpdateUserAsync(xDTO.User item);

		Task<IHttpCallResultCGHT<xDTO.UsersLocation>> UpdateUsersLocationAsync(xDTO.UsersLocation item);

		Task<IHttpCallResultCGHT<xDTO.UsersNotificationType>> UpdateUsersNotificationTypeAsync(xDTO.UsersNotificationType item);

		Task<IHttpCallResultCGHT<xDTO.Vehicle>> UpdateVehicleAsync(xDTO.Vehicle item);

		Task<IHttpCallResultCGHT<xDTO.VehicleFeatureType>> UpdateVehicleFeatureTypeAsync(xDTO.VehicleFeatureType item);

		Task<IHttpCallResultCGHT<xDTO.VehicleStatusType>> UpdateVehicleStatusTypeAsync(xDTO.VehicleStatusType item);

		Task<IHttpCallResultCGHT<xDTO.VehicleType>> UpdateVehicleTypeAsync(xDTO.VehicleType item);

		Task<IHttpCallResultCGHT<xDTO.VehicleTypeVehicleFeatureType>> UpdateVehicleTypeVehicleFeatureTypeAsync(xDTO.VehicleTypeVehicleFeatureType item);

		Task<IHttpCallResultCGHT<xDTO.VehicleVehicleFeatureType>> UpdateVehicleVehicleFeatureTypeAsync(xDTO.VehicleVehicleFeatureType item);


		#endregion Update


		#region Delete

		Task<IHttpCallResultCGHT<xDTO.Driver>> DeleteDriverAsync(int driverId);

		Task<IHttpCallResultCGHT<xDTO.Feedback>> DeleteFeedbackAsync(System.Guid feedbackId);

		Task<IHttpCallResultCGHT<xDTO.FeedbackType>> DeleteFeedbackTypeAsync(int feedbackTypeId);

		Task<IHttpCallResultCGHT<xDTO.GenderType>> DeleteGenderTypeAsync(int genderTypeId);

		Task<IHttpCallResultCGHT<xDTO.Holiday>> DeleteHolidayAsync(int holidayId);

		Task<IHttpCallResultCGHT<xDTO.LanguageType>> DeleteLanguageTypeAsync(int languageTypeId);

		Task<IHttpCallResultCGHT<xDTO.Location>> DeleteLocationAsync(System.Guid locationId);

		Task<IHttpCallResultCGHT<xDTO.NotificationType>> DeleteNotificationTypeAsync(int notificationTypeId);

		Task<IHttpCallResultCGHT<xDTO.Reservation>> DeleteReservationAsync(System.Guid reservationId);

		Task<IHttpCallResultCGHT<xDTO.ReservationCancellationReasonType>> DeleteReservationCancellationReasonTypeAsync(int reservationCancellationReasonTypeId);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequest>> DeleteReservationRequestAsync(System.Guid reservationRequestId);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestCancellationReasonType>> DeleteReservationRequestCancellationReasonTypeAsync(int reservationRequestCancellationReasonTypeId);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestOption>> DeleteReservationRequestOptionAsync(int reservationRequestOptionId);

		Task<IHttpCallResultCGHT<xDTO.ReservationRequestStatusType>> DeleteReservationRequestStatusTypeAsync(int reservationRequestStatusTypeId);

		Task<IHttpCallResultCGHT<xDTO.ReservationStatusType>> DeleteReservationStatusTypeAsync(int reservationStatusTypeId);

		Task<IHttpCallResultCGHT<xDTO.Ride>> DeleteRideAsync(System.Guid rideId);

		Task<IHttpCallResultCGHT<xDTO.RidePosition>> DeleteRidePositionAsync(System.Guid ridePositionId);

		Task<IHttpCallResultCGHT<xDTO.RideServiceType>> DeleteRideServiceTypeAsync(int rideServiceTypeId);

		Task<IHttpCallResultCGHT<xDTO.User>> DeleteUserAsync(int userId);

		Task<IHttpCallResultCGHT<xDTO.UsersLocation>> DeleteUsersLocationAsync(int userId, System.Guid locationId);

		Task<IHttpCallResultCGHT<xDTO.UsersNotificationType>> DeleteUsersNotificationTypeAsync(int userId, int notificationTypeId);

		Task<IHttpCallResultCGHT<xDTO.Vehicle>> DeleteVehicleAsync(int vehicleId);

		Task<IHttpCallResultCGHT<xDTO.VehicleFeatureType>> DeleteVehicleFeatureTypeAsync(int vehicleFeatureTypeId);

		Task<IHttpCallResultCGHT<xDTO.VehicleStatusType>> DeleteVehicleStatusTypeAsync(int vehicleStatusTypeId);

		Task<IHttpCallResultCGHT<xDTO.VehicleType>> DeleteVehicleTypeAsync(int vehicleTypeId);

		Task<IHttpCallResultCGHT<xDTO.VehicleTypeVehicleFeatureType>> DeleteVehicleTypeVehicleFeatureTypeAsync(int vehicleTypeId, int vehicleFeatureTypeId);

		Task<IHttpCallResultCGHT<xDTO.VehicleVehicleFeatureType>> DeleteVehicleVehicleFeatureTypeAsync(int vehicleId, int vehicleFeatureTypeId);


		#endregion Delete


	}
}