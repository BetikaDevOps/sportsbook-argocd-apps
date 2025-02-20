{{- define "sportsbook.labels" -}}
app: {{ .Values.appName }}
release: {{ .Release.Name }}
{{- end }}

{{- define "sportsbook.fullname" -}}
{{ .Release.Name }}
{{- end }}