// <auto-generated> - Template:XamSample, Version:1.1, Id:9131a0a2-7ceb-4f4c-b8a9-6740ac19f66c
using System;
using CGH.QuikRide.DTO.QR;

namespace CGH.QuikRide.DTO.QR
{
	public static class DemoUsersNotificationType
	{
		public static int SampleUsersNotificationTypeId0000 = DemoUser.SampleUserId0000;
		public static int SampleUsersNotificationTypeId0001 = DemoNotificationType.SampleNotificationTypeId0000;
		public static int SampleUsersNotificationTypeId0100 = DemoUser.SampleUserId0100;
		public static int SampleUsersNotificationTypeId0101 = DemoNotificationType.SampleNotificationTypeId0100;

		public static UsersNotificationType SampleUsersNotificationType00
		{
			get
			{
				return new UsersNotificationType()
				{
					UserId = SampleUsersNotificationTypeId0000,
					NotificationTypeId = SampleUsersNotificationTypeId0001,
					DataVersion = 0,
					CreatedUtcDate = DateTime.Now,
					CreatedBy = "SampleCreatedBy",
					ModifiedUtcDate = DateTime.Now,
					ModifiedBy = "SampleModifiedBy",
					IsDeleted = false,
				};
			}
		}
		public static UsersNotificationType SampleUsersNotificationType01
		{
			get
			{
				return new UsersNotificationType()
				{
					UserId = SampleUsersNotificationTypeId0100,
					NotificationTypeId = SampleUsersNotificationTypeId0101,
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
