// <auto-generated> - Template:XamSample, Version:1.1, Id:9131a0a2-7ceb-4f4c-b8a9-6740ac19f66c
using System;
using CGH.QuikRide.DTO.QR;

namespace CGH.QuikRide.DTO.QR
{
	public static class DemoRide
	{
		public static System.Guid SampleRideId0000 = Guid.Parse("10daa0a9-00ab-4829-acab-dfd9e07b8484");
		public static System.Guid SampleRideId0100 = Guid.Parse("30b77ddc-b4bc-4c8e-8317-d9d987e2faab");

		public static Ride SampleRide00
		{
			get
			{
				return new Ride()
				{
					RideId = SampleRideId0000,
					Start = DateTime.Now,
					StartLatitude = 0,
					StartLongitude = 0,
					End = DateTime.Now,
					EndLatitude = 0,
					EndLongitude = 0,
					VehicleId = 0,
					DriverId = 0,
					UserId = 0,
					DurationInSeconds = 0,
					GeoDistance = 0,
					DataVersion = 0,
					CreatedUtcDate = DateTime.Now,
					CreatedBy = "SampleCreatedBy",
					ModifiedUtcDate = DateTime.Now,
					ModifiedBy = "SampleModifiedBy",
					IsDeleted = false,
				};
			}
		}
		public static Ride SampleRide01
		{
			get
			{
				return new Ride()
				{
					RideId = SampleRideId0100,
					Start = DateTime.Now,
					StartLatitude = 0,
					StartLongitude = 0,
					End = DateTime.Now,
					EndLatitude = 0,
					EndLongitude = 0,
					VehicleId = 0,
					DriverId = 0,
					UserId = 0,
					DurationInSeconds = 0,
					GeoDistance = 0,
					DataVersion = 0,
					CreatedUtcDate = DateTime.Now,
					CreatedBy = "SampleCreatedBy",
					ModifiedUtcDate = DateTime.Now,
					ModifiedBy = "SampleModifiedBy",
					IsDeleted = false,
				};
			}
		}

	}
}
