#tag Module
Protected Module WebExtensions
	#tag Method, Flags = &h0
		Sub RemoveBadge(Extends control As WebUIControl)
		  Var js As String = "$('#" + control.ControlID + " .xojo-badge').remove();"
		  control.ExecuteJavaScript(js)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBadge(Extends control As WebUIControl, caption As String, indicator As String = "danger", top As Integer = -10, right As Integer = -10)
		  Var classes() As String = Array("xojo-badge", "d-flex", "p-2", _
		  "border", "border-light", "bg-" + indicator)
		  classes.Add(If(caption.Length < 2, "rounded-circle", "rounded-pill"))
		  
		  Var styles() As String = Array("height: 21px", "font-size: 10px", _
		  "align-items: center", "color: white", "position: absolute", _
		  "top: " + top.ToString + "px", "right: " + Right.ToString + "px", _
		  "z-index: 10")
		  
		  If caption = "" Or caption = " " Then caption = "&nbsp;"
		  Var html As String = "<span class=""" + String.FromArray(classes) + _
		  """ style=""" + String.FromArray(styles, ";") + """>" + caption + "</span>"
		  
		  Var js() As String
		  js.Add("$('#" + control.ControlID + " .xojo-badge').remove();")
		  js.Add("$('#" + control.ControlID + "').append(`" + html + "`);")
		  control.ExecuteJavaScript(String.FromArray(js))
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
