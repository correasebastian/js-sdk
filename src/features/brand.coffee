	class Brand

		constructor: (@m) ->

		Get: (id, callback, error) ->

			return @m.Request 'brands/'+id, 'GET', null, callback, error

		Find: (terms, callback, error) ->

			return @m.Request 'brands', 'GET', terms, callback, error

		List: (terms, callback, error) ->

			return @m.Request 'brands', 'GET', terms, callback, error

		Fields: (id = 0, callback, error) ->

			uri  = 'brands/'+ if id != 0 then id+'/fields' else 'fields'
			
			return @m.Request uri, 'GET', null, callback, error
