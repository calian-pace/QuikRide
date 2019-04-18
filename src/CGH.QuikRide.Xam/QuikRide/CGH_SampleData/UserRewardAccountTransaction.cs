// <auto-generated> - Template:XamSample, Version:1.1, Id:9131a0a2-7ceb-4f4c-b8a9-6740ac19f66c
using System;
using CGH.QuikRide.DTO.QR;

namespace CGH.QuikRide.DTO.QR
{
	public static class DemoUserRewardAccountTransaction
	{
		public static System.Guid SampleUserRewardAccountTransactionId0000 = Guid.Parse("ed027fb2-eab5-4887-a6e8-974bb85bc109");
		public static System.Guid SampleUserRewardAccountTransactionId0100 = Guid.Parse("33e1070a-db0b-45f9-a359-2f031cb9d9d0");

		public static UserRewardAccountTransaction SampleUserRewardAccountTransaction00
		{
			get
			{
				return new UserRewardAccountTransaction()
				{
					UserRewardAccountTransactionId = SampleUserRewardAccountTransactionId0000,
					UserRewardAccountId = Guid.Parse("b1603c3a-3b2f-4647-a559-3a0a2e7bc623"),
					UserRewardAccountTransactionTypeId = 0,
					Value = 0,
					Memo = "SampleMemo",
					DataVersion = 0,
					CreatedUtcDate = DateTime.Now,
					CreatedBy = "SampleCreatedBy",
					ModifiedUtcDate = DateTime.Now,
					ModifiedBy = "SampleModifiedBy",
					IsDeleted = false,
				};
			}
		}
		public static UserRewardAccountTransaction SampleUserRewardAccountTransaction01
		{
			get
			{
				return new UserRewardAccountTransaction()
				{
					UserRewardAccountTransactionId = SampleUserRewardAccountTransactionId0100,
					UserRewardAccountId = Guid.Parse("234c4aef-c5a5-494d-b519-cfe2deebd0bb"),
					UserRewardAccountTransactionTypeId = 0,
					Value = 0,
					Memo = "SampleMemo",
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