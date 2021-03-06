// <auto-generated> - Template:ModelsBackedByDtoInterface, Version:1.1, Id:4d03f2c7-de27-4aae-a267-cad747c9606a
using System;
using System.Collections.Generic;

namespace CGH.QuikRide.Model.QR.Interface
{
	public partial interface IBusRoute
	{
		int BusRouteId { get; }
		int BusRouteNumber { get; }
		string CreatedBy { get; }
		System.DateTime CreatedUtcDate { get; }
		int DataVersion { get; }
		System.DateTime? InServiceSince { get; }
		bool IsDeleted { get; }
		string ModifiedBy { get; }
		System.DateTime ModifiedUtcDate { get; }

		List<IBusRouteStop> BusRouteStops { get; }
		List<IBusRouteTranslation> BusRouteTranslations { get; }
		List<IVehicleBusRoute> VehicleBusRoutes { get; }


	}
}
