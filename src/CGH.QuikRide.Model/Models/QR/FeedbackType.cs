// <auto-generated> - Template:ModelsBackedByDto, Version:1.1, Id:f1539c0d-024f-4b1f-b346-132cdd9dd31f
using CodeGenHero.Logging;
using CodeGenHero.DataService;
using System;
using System.Collections.Generic;
using System.Linq;
using CGH.QuikRide.API.Client.Interface;
using CGH.QuikRide.Model.QR.Interface;
using xDTO = CGH.QuikRide.DTO.QR;

namespace CGH.QuikRide.Model.QR
{

	public class LoadRequestFeedbackType : EventArgs
	{
		public LoadRequestFeedbackType(string propertyNameRequestingLoad)
		{
			PropertyNameRequestingLoad = propertyNameRequestingLoad;
		}

		public string PropertyNameRequestingLoad { get; set; }
	}


	public partial class FeedbackType : BaseModel<IWebApiDataServiceQR>, IFeedbackType
	{
		public event EventHandler<LoadRequestFeedbackType> OnLazyLoadRequest = delegate { }; // Empty delegate. Thus we are sure that value is always != null because no one outside of the class can change it.
		private xDTO.FeedbackType _dto = null;

		public FeedbackType(ILoggingService log, IDataService<IWebApiDataServiceQR> dataService) : base(log, dataService)
		{
			_dto = new xDTO.FeedbackType();
			OnLazyLoadRequest += HandleLazyLoadRequest;
		}

		public FeedbackType(ILoggingService log, IDataService<IWebApiDataServiceQR> dataService, xDTO.FeedbackType dto) : this(log, dataService)
		{
			_dto = dto;
		}


		public virtual string Code { get { return _dto.Code; } }
		public virtual string CreatedBy { get { return _dto.CreatedBy; } }
		public virtual System.DateTime CreatedUtcDate { get { return _dto.CreatedUtcDate; } }
		public virtual int DataVersion { get { return _dto.DataVersion; } }
		public virtual string Description { get { return _dto.Description; } }
		public virtual int DisplayPriority { get { return _dto.DisplayPriority; } }
		public virtual string DisplayText { get { return _dto.DisplayText; } }
		public virtual int FeedbackTypeId { get { return _dto.FeedbackTypeId; } }
		public virtual bool IsDeleted { get { return _dto.IsDeleted; } }
		public virtual int LanguageTypeId { get { return _dto.LanguageTypeId; } }
		public virtual string ModifiedBy { get { return _dto.ModifiedBy; } }
		public virtual System.DateTime ModifiedUtcDate { get { return _dto.ModifiedUtcDate; } }

		private ILanguageType _languageType = null; // Foreign Key
		private List<IFeedback> _feedbacks = null; // Reverse Navigation


		public virtual ILanguageType LanguageType
		{
			get
			{
				if (_languageType == null && _dto != null && _dto.LanguageType != null)
				{
					_languageType = new LanguageType(Log, DataService, _dto.LanguageType);
				}

				return _languageType;
			}
		}

		public virtual List<IFeedback> Feedbacks
		{
			get
			{
				if (_feedbacks == null && _dto != null)
				{	// The core DTO object is loaded, but this property is not loaded.
					if (_dto.Feedbacks != null)
					{	// The core DTO object has data for this property, load it into the model.
						_feedbacks = new List<IFeedback>();
						foreach (var dtoItem in _dto.Feedbacks)
						{
							_feedbacks.Add(new Feedback(Log, DataService, dtoItem));
						}
					}
					else
					{	// Trigger the load data request - The core DTO object is loaded and does not have data for this property.
						OnLazyLoadRequest(this, new LoadRequestFeedbackType(nameof(Feedbacks)));
					}
				}

				return _feedbacks;
			}
		}



	}
}