var Base64 = {
	_keyStr : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
	decode : function (input) {
		var output = "";
		var chr1, chr2, chr3;
		var enc1, enc2, enc3, enc4;
		var i = 0;	
		input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");	
		while (i < input.length) {	
			enc1 = this._keyStr.indexOf(input.charAt(i++));
			enc2 = this._keyStr.indexOf(input.charAt(i++));
			enc3 = this._keyStr.indexOf(input.charAt(i++));
			enc4 = this._keyStr.indexOf(input.charAt(i++));		
			chr1 = (enc1 << 2) | (enc2 >> 4);
			chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
			chr3 = ((enc3 & 3) << 6) | enc4;		
			output = output + String.fromCharCode(chr1);		
			if (enc3 != 64) {
				output = output + String.fromCharCode(chr2);
			}
			if (enc4 != 64) {
				output = output + String.fromCharCode(chr3);
			}	
		}	
		output = Base64._utf8_decode(output);	
		return output;

	},
	_utf8_decode : function (utftext) {
		var string = "";
		var i = 0;
		var c = c1 = c2 = 0;	
		while ( i < utftext.length ) {	
			c = utftext.charCodeAt(i);		
			if (c < 128) {
				string += String.fromCharCode(c);
				i++;
			}
			else if((c > 191) && (c < 224)) {
				c2 = utftext.charCodeAt(i+1);
				string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
				i += 2;
			}
			else {
				c2 = utftext.charCodeAt(i+1);
				c3 = utftext.charCodeAt(i+2);
				string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
				i += 3;
			}	
		}	
		return string;
	}
};

(function($) {
	if ($.browser.mozilla) {
		$.fn.disableTextSelect = function() {
			return this.each(function() {
				$(this).css({
				'MozUserSelect' : 'none'
				});
			});
		};
		$.fn.enableTextSelect = function() {
			return this.each(function() {
				$(this).css({
				'MozUserSelect' : ''
				});
			});
		};
	} else if ($.browser.msie) {
		$.fn.disableTextSelect = function() {
			return this.each(function() {
				$(this).bind('selectstart.disableTextSelect', function() {
				return false;
				});
			});
		};
		$.fn.enableTextSelect = function() {
			return this.each(function() {
				$(this).unbind('selectstart.disableTextSelect');
			});
		};
	} else {
		$.fn.disableTextSelect = function() {
			return this.each(function() {
				$(this).bind('mousedown.disableTextSelect', function() {
					return false;
				});
			});
		};
		$.fn.enableTextSelect = function() {
			return this.each(function() {
				$(this).unbind('mousedown.disableTextSelect');
			});
		};
	}
})(jQuery);