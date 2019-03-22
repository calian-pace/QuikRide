// <auto-generated> - Template:XamSample, Version:1.1, Id:9131a0a2-7ceb-4f4c-b8a9-6740ac19f66c
using System;
using CGH.QuikRide.DTO.QR;

namespace CGH.QuikRide.DTO.QR
{
	public static class DemoHoliday
	{
		public static int SampleHolidayId0000 = 329184668;
		public static int SampleHolidayId0100 = 1497528876;

		public static Holiday SampleHoliday00
		{
			get
			{
				return new Holiday()
				{
					HolidayId = SampleHolidayId0000,
					Date = DateTime.Now,
					LanguageTypeId = 0,
					Code = "SampleCode",
					DisplayText = "SampleDisplayText",
					DataVersion = 0,
					CreatedUtcDate = DateTime.Now,
					CreatedBy = "SampleCreatedBy",
					ModifiedUtcDate = DateTime.Now,
					ModifiedBy = "SampleModifiedBy",
					IsDeleted = false,
				};
			}
		}
		public static Holiday SampleHoliday01
		{
			get
			{
				return new Holiday()
				{
					HolidayId = SampleHolidayId0100,
					Date = DateTime.Now,
					LanguageTypeId = 0,
					Code = "SampleCode",
					DisplayText = "SampleDisplayText",
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
