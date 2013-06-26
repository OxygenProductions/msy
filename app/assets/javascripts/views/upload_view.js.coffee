JE.UploadView = Ember.View.extend
	templateName: 'upload'
	
	value: null
	
	fieldId: null
	
	didInsertElement: ()->
		me = @
		param = $('meta[name="csrf-param"]').attr('content')
		token = $('meta[name="csrf-token"]').attr('content')
		@$('.fineuploader').fineUploader
			request:
				endpoint: 'upload',
				customHeaders:
					'X-Transaction': 'POST Example',
					'X-CSRF-Token': token
				params:
					field_id: me.get('fieldId')
			multiple: false
			validation:
				allowedExtensions: ['png','jpeg','jpg','gif']
			text:
				uploadButton: '<div><i class="icon-upload icon-white"></i> Upload a file</div>',
			template: '<div class="qq-uploader span12">' +'<pre class="qq-upload-drop-area span12"><span>{dragZoneText}</span></pre>' +'<div class="qq-upload-button btn btn-success" style="width: auto;">{uploadButtonText}</div>' +'<span class="qq-drop-processing"><span>{dropProcessingText}</span><span class="qq-drop-processing-spinner"></span></span>' +'<ul class="qq-upload-list" style="margin-top: 10px; text-align: center;"></ul>' +'</div>',
			classes:
				success: 'alert alert-success'	
				fail: 'alert alert-error'
		.on('complete', (event, id, fileName, r)->
			console.log r.image
			me.set('value', r.image)
			return
		)
		return