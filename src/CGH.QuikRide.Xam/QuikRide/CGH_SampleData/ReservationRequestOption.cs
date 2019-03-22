// <auto-generated> - Template:XamSample, Version:1.1, Id:9131a0a2-7ceb-4f4c-b8a9-6740ac19f66c
using System;
using CGH.QuikRide.DTO.QR;

namespace CGH.QuikRide.DTO.QR
{
	public static class DemoReservationRequestOption
	{
		public static int SampleReservationRequestOptionId0000 = 1165405701;
		public static int SampleReservationRequestOptionId0100 = 1132829843;

		public static ReservationRequestOption SampleReservationRequestOption00
		{
			get
			{
				return new ReservationRequestOption()
				{
					ReservationRequestOptionId = SampleReservationRequestOptionId0000,
					ReservationRequestId = Guid.Parse("f2b85406-31d5-4e7b-8d9e-62fcf3d80076"),
					SuggestedPickupStart = DateTime.Now,
					SuggestedPickupEnd = DateTime.Now,
					EstimatedArrivalStart = DateTime.Now,
					EstimatedArrivalEnd = DateTime.Now,
					Score = 0,
					DataVersion = 0,
					CreatedUtcDate = DateTime.Now,
					CreatedBy = "SampleCreatedBy",
					ModifiedUtcDate = DateTime.Now,
					ModifiedBy = "SampleModifiedBy",
					IsDeleted = false,
				};
			}
		}
		public static ReservationRequestOption SampleReservationRequestOption01
		{
			get
			{
				return new ReservationRequestOption()
				{
					ReservationRequestOptionId = SampleReservationRequestOptionId0100,
					ReservationRequestId = Guid.Parse("d51ddf10-32b5-4e23-984a-54e37c67f92c"),
					SuggestedPickupStart = DateTime.Now,
					SuggestedPickupEnd = DateTime.Now,
					EstimatedArrivalStart = DateTime.Now,
					EstimatedArrivalEnd = DateTime.Now,
					Score = 0,
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
