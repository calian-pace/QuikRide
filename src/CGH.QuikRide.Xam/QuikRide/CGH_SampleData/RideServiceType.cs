// <auto-generated> - Template:XamSample, Version:1.1, Id:9131a0a2-7ceb-4f4c-b8a9-6740ac19f66c
using System;
using CGH.QuikRide.DTO.QR;

namespace CGH.QuikRide.DTO.QR
{
	public static class DemoRideServiceType
	{
		public static int SampleRideServiceTypeId0000 = 2027146358;
		public static int SampleRideServiceTypeId0100 = 1565856947;

		public static RideServiceType SampleRideServiceType00
		{
			get
			{
				return new RideServiceType()
				{
					RideServiceTypeId = SampleRideServiceTypeId0000,
					LanguageTypeId = 0,
					Code = "SampleCode",
					DisplayText = "SampleDisplayText",
					DisplayPriority = 0,
					Description = "SampleDescription",
					DataVersion = 0,
					CreatedUtcDate = DateTime.Now,
					CreatedBy = "SampleCreatedBy",
					ModifiedUtcDate = DateTime.Now,
					ModifiedBy = "SampleModifiedBy",
					IsDeleted = false,
				};
			}
		}
		public static RideServiceType SampleRideServiceType01
		{
			get
			{
				return new RideServiceType()
				{
					RideServiceTypeId = SampleRideServiceTypeId0100,
					LanguageTypeId = 0,
					Code = "SampleCode",
					DisplayText = "SampleDisplayText",
					DisplayPriority = 0,
					Description = "SampleDescription",
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
