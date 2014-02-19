<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<LINK href="<%=request.getContextPath()%>/mystyle.css"
  rel="stylesheet" type="text/css">
</head>
<body>
<h3>Todo list</h3>
<f:view>
  <h:messages layout="table"></h:messages>

  <%-- Possibility to start a new Todo --%>
  <h:form>
    <h:commandLink binding="#{todoControler.addCommand}" accesskey="n"
      action="#{todoControler.addNew}" value="Add new Todo">
    </h:commandLink>
  </h:form>


  <h:form binding="#{todoControler.form}" rendered="false"
    styleClass="todo">
    <h:panelGrid columns="2">
      <h:outputText value="Title"></h:outputText>
      <h:inputText value="#{todoControler.todo.title}" required="true"
        requiredMessage="Title is required">
      </h:inputText>
      <h:outputText value="Description"></h:outputText>
      <h:inputTextarea value="#{todoControler.todo.description}" cols="40"
        rows="4"></h:inputTextarea>
      <h:outputText value="Prio"></h:outputText>
      <h:selectOneMenu validatorMessage="required"
        value="#{todoControler.todo.priority}">
        <f:selectItems value="#{todoControler.priorities}" />
      </h:selectOneMenu>
    </h:panelGrid>
    <h:panelGroup>
      <h:commandButton action="#{todoControler.save}" value="Save"
        accesskey="s">
      </h:commandButton>
      <h:commandButton action="#{todoControler.cancel}" value="Cancel"
        accesskey="c" immediate="true">
      </h:commandButton>
    </h:panelGroup>
  </h:form>

  <%-- These buttons allow to show and hide the table --%>
  <h:form>
    <h:panelGrid columns="2">
      <h:commandLink id="hide"
        actionListener="#{todoControler.displayTable}" value="Hide Table">
      </h:commandLink>
      <h:commandLink id="show"
        actionListener="#{todoControler.displayTable}" value="Show Table">
      </h:commandLink>
    </h:panelGrid>
  </h:form>

  <%-- Here we start the form for the data table --%>
  <h:form binding="#{todoControler.tableForm}">
    <%-- Here we start the data table --%>

    <h:dataTable value="#{todoControler.todos}" var="todo"
      styleClass="todo" headerClass="todoheader"
      columnClasses="first, rest">
      <h:column>
        <%-- Via this facet we define the table header (column 1) --%>
        <f:facet name="header">
          <h:column>
            <h:outputText value="Prio"></h:outputText>
          </h:column>
        </f:facet>
        <h:outputText value="#{todo.priority}"></h:outputText>
      </h:column>
      <h:column>
        <%-- Via this facet we define the table header (column 2) --%>
        <f:facet name="header">
          <h:column>
            <h:outputText value="Title"></h:outputText>
          </h:column>
        </f:facet>
        <h:outputText value="#{todo.title}"></h:outputText>

      </h:column>

      <h:column>
        <%-- Via this facet we define the table header (column 3) --%>
        <f:facet name="header">
          <h:column>
            <h:outputText value="Description"></h:outputText>
          </h:column>
        </f:facet>
        <h:outputText value="#{todo.description}"></h:outputText>
      </h:column>

      <h:column>
        <%-- Via this facet we define the table header (column 4) --%>
        <f:facet name="header">
          <h:column>
            <h:outputText value="Actions"></h:outputText>
          </h:column>
        </f:facet>
        <h:panelGrid columns="2">
          <h:commandLink value="delete" action="#{todoControler.delete}">
            <f:setPropertyActionListener target="#{todoControler.todo}"
              value="#{todo}" />
          </h:commandLink>
        </h:panelGrid>
      </h:column>
    </h:dataTable>

  </h:form>
</f:view>
</body>
</html> 