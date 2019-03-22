// <auto-generated> - Template:XamSample, Version:1.1, Id:9131a0a2-7ceb-4f4c-b8a9-6740ac19f66c
using System;
using CGH.QuikRide.DTO.QR;

namespace CGH.QuikRide.DTO.QR
{
	public static class DemoFeedbackType
	{
		public static int SampleFeedbackTypeId0000 = 329184668;
		public static int SampleFeedbackTypeId0100 = 1497528876;

		public static FeedbackType SampleFeedbackType00
		{
			get
			{
				return new FeedbackType()
				{
					FeedbackTypeId = SampleFeedbackTypeId0000,
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
		public static FeedbackType SampleFeedbackType01
		{
			get
			{
				return new FeedbackType()
				{
					FeedbackTypeId = SampleFeedbackTypeId0100,
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
