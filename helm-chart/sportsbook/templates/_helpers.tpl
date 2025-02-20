{{- define "sportsbook.labels" -}}
app: {{ .Values.appName }}
release: {{ .Release.Name }}
{{- end }}

{{- define "sportsbook.fullname" -}}
{{ .Release.Name }}
{{- end }}


{{/*
Selector labels
*/}}
{{- define "sportsbook.selectorLabels" -}}
app.kubernetes.io/name: {{ include "sportsbook.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}