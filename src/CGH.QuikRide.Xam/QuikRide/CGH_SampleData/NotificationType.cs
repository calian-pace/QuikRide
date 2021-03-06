// <auto-generated> - Template:XamSample, Version:1.1, Id:9131a0a2-7ceb-4f4c-b8a9-6740ac19f66c
using System;
using CGH.QuikRide.DTO.QR;

namespace CGH.QuikRide.DTO.QR
{
	public static class DemoNotificationType
	{
		public static int SampleNotificationTypeId0000 = 1912538968;
		public static int SampleNotificationTypeId0100 = 373948785;

		public static NotificationType SampleNotificationType00
		{
			get
			{
				return new NotificationType()
				{
					NotificationTypeId = SampleNotificationTypeId0000,
					Code = "SampleCode",
					DataVersion = 0,
					CreatedUtcDate = DateTime.Now,
					CreatedBy = "SampleCreatedBy",
					ModifiedUtcDate = DateTime.Now,
					ModifiedBy = "SampleModifiedBy",
					IsDeleted = false,
				};
			}
		}
		public static NotificationType SampleNotificationType01
		{
			get
			{
				return new NotificationType()
				{
					NotificationTypeId = SampleNotificationTypeId0100,
					Code = "SampleCode",
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
