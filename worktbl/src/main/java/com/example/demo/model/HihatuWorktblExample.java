package com.example.demo.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class HihatuWorktblExample {
    /**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	protected String orderByClause;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	protected boolean distinct;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	protected List<Criteria> oredCriteria;

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public HihatuWorktblExample() {
		oredCriteria = new ArrayList<>();
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void setDistinct(boolean distinct) {
		this.distinct = distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public boolean isDistinct() {
		return distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public List<Criteria> getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public Criteria or() {
		Criteria criteria = createCriteriaInternal();
		oredCriteria.add(criteria);
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void clear() {
		oredCriteria.clear();
		orderByClause = null;
		distinct = false;
	}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	protected abstract static class GeneratedCriteria {
		protected List<Criterion> criteria;

		protected GeneratedCriteria() {
			super();
			criteria = new ArrayList<>();
		}

		public boolean isValid() {
			return criteria.size() > 0;
		}

		public List<Criterion> getAllCriteria() {
			return criteria;
		}

		public List<Criterion> getCriteria() {
			return criteria;
		}

		protected void addCriterion(String condition) {
			if (condition == null) {
				throw new RuntimeException("Value for condition cannot be null");
			}
			criteria.add(new Criterion(condition));
		}

		protected void addCriterion(String condition, Object value, String property) {
			if (value == null) {
				throw new RuntimeException("Value for " + property + " cannot be null");
			}
			criteria.add(new Criterion(condition, value));
		}

		protected void addCriterion(String condition, Object value1, Object value2, String property) {
			if (value1 == null || value2 == null) {
				throw new RuntimeException("Between values for " + property + " cannot be null");
			}
			criteria.add(new Criterion(condition, value1, value2));
		}

		protected void addCriterionForJDBCDate(String condition, Date value, String property) {
			if (value == null) {
				throw new RuntimeException("Value for " + property + " cannot be null");
			}
			addCriterion(condition, new java.sql.Date(value.getTime()), property);
		}

		protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
			if (values == null || values.size() == 0) {
				throw new RuntimeException("Value list for " + property + " cannot be null or empty");
			}
			List<java.sql.Date> dateList = new ArrayList<>();
			Iterator<Date> iter = values.iterator();
			while (iter.hasNext()) {
				dateList.add(new java.sql.Date(iter.next().getTime()));
			}
			addCriterion(condition, dateList, property);
		}

		protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
			if (value1 == null || value2 == null) {
				throw new RuntimeException("Between values for " + property + " cannot be null");
			}
			addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
		}

		protected void addCriterionForJDBCTime(String condition, Date value, String property) {
			if (value == null) {
				throw new RuntimeException("Value for " + property + " cannot be null");
			}
			addCriterion(condition, new java.sql.Time(value.getTime()), property);
		}

		protected void addCriterionForJDBCTime(String condition, List<Date> values, String property) {
			if (values == null || values.size() == 0) {
				throw new RuntimeException("Value list for " + property + " cannot be null or empty");
			}
			List<java.sql.Time> timeList = new ArrayList<>();
			Iterator<Date> iter = values.iterator();
			while (iter.hasNext()) {
				timeList.add(new java.sql.Time(iter.next().getTime()));
			}
			addCriterion(condition, timeList, property);
		}

		protected void addCriterionForJDBCTime(String condition, Date value1, Date value2, String property) {
			if (value1 == null || value2 == null) {
				throw new RuntimeException("Between values for " + property + " cannot be null");
			}
			addCriterion(condition, new java.sql.Time(value1.getTime()), new java.sql.Time(value2.getTime()), property);
		}

		public Criteria andHidIsNull() {
			addCriterion("hid is null");
			return (Criteria) this;
		}

		public Criteria andHidIsNotNull() {
			addCriterion("hid is not null");
			return (Criteria) this;
		}

		public Criteria andHidEqualTo(Integer value) {
			addCriterion("hid =", value, "hid");
			return (Criteria) this;
		}

		public Criteria andHidNotEqualTo(Integer value) {
			addCriterion("hid <>", value, "hid");
			return (Criteria) this;
		}

		public Criteria andHidGreaterThan(Integer value) {
			addCriterion("hid >", value, "hid");
			return (Criteria) this;
		}

		public Criteria andHidGreaterThanOrEqualTo(Integer value) {
			addCriterion("hid >=", value, "hid");
			return (Criteria) this;
		}

		public Criteria andHidLessThan(Integer value) {
			addCriterion("hid <", value, "hid");
			return (Criteria) this;
		}

		public Criteria andHidLessThanOrEqualTo(Integer value) {
			addCriterion("hid <=", value, "hid");
			return (Criteria) this;
		}

		public Criteria andHidIn(List<Integer> values) {
			addCriterion("hid in", values, "hid");
			return (Criteria) this;
		}

		public Criteria andHidNotIn(List<Integer> values) {
			addCriterion("hid not in", values, "hid");
			return (Criteria) this;
		}

		public Criteria andHidBetween(Integer value1, Integer value2) {
			addCriterion("hid between", value1, value2, "hid");
			return (Criteria) this;
		}

		public Criteria andHidNotBetween(Integer value1, Integer value2) {
			addCriterion("hid not between", value1, value2, "hid");
			return (Criteria) this;
		}

		public Criteria andPersonIsNull() {
			addCriterion("person is null");
			return (Criteria) this;
		}

		public Criteria andPersonIsNotNull() {
			addCriterion("person is not null");
			return (Criteria) this;
		}

		public Criteria andPersonEqualTo(String value) {
			addCriterion("person =", value, "person");
			return (Criteria) this;
		}

		public Criteria andPersonNotEqualTo(String value) {
			addCriterion("person <>", value, "person");
			return (Criteria) this;
		}

		public Criteria andPersonGreaterThan(String value) {
			addCriterion("person >", value, "person");
			return (Criteria) this;
		}

		public Criteria andPersonGreaterThanOrEqualTo(String value) {
			addCriterion("person >=", value, "person");
			return (Criteria) this;
		}

		public Criteria andPersonLessThan(String value) {
			addCriterion("person <", value, "person");
			return (Criteria) this;
		}

		public Criteria andPersonLessThanOrEqualTo(String value) {
			addCriterion("person <=", value, "person");
			return (Criteria) this;
		}

		public Criteria andPersonLike(String value) {
			addCriterion("person like", value, "person");
			return (Criteria) this;
		}

		public Criteria andPersonNotLike(String value) {
			addCriterion("person not like", value, "person");
			return (Criteria) this;
		}

		public Criteria andPersonIn(List<String> values) {
			addCriterion("person in", values, "person");
			return (Criteria) this;
		}

		public Criteria andPersonNotIn(List<String> values) {
			addCriterion("person not in", values, "person");
			return (Criteria) this;
		}

		public Criteria andPersonBetween(String value1, String value2) {
			addCriterion("person between", value1, value2, "person");
			return (Criteria) this;
		}

		public Criteria andPersonNotBetween(String value1, String value2) {
			addCriterion("person not between", value1, value2, "person");
			return (Criteria) this;
		}

		public Criteria andHdateIsNull() {
			addCriterion("hdate is null");
			return (Criteria) this;
		}

		public Criteria andHdateIsNotNull() {
			addCriterion("hdate is not null");
			return (Criteria) this;
		}

		public Criteria andHdateEqualTo(Date value) {
			addCriterionForJDBCDate("hdate =", value, "hdate");
			return (Criteria) this;
		}

		public Criteria andHdateNotEqualTo(Date value) {
			addCriterionForJDBCDate("hdate <>", value, "hdate");
			return (Criteria) this;
		}

		public Criteria andHdateGreaterThan(Date value) {
			addCriterionForJDBCDate("hdate >", value, "hdate");
			return (Criteria) this;
		}

		public Criteria andHdateGreaterThanOrEqualTo(Date value) {
			addCriterionForJDBCDate("hdate >=", value, "hdate");
			return (Criteria) this;
		}

		public Criteria andHdateLessThan(Date value) {
			addCriterionForJDBCDate("hdate <", value, "hdate");
			return (Criteria) this;
		}

		public Criteria andHdateLessThanOrEqualTo(Date value) {
			addCriterionForJDBCDate("hdate <=", value, "hdate");
			return (Criteria) this;
		}

		public Criteria andHdateIn(List<Date> values) {
			addCriterionForJDBCDate("hdate in", values, "hdate");
			return (Criteria) this;
		}

		public Criteria andHdateNotIn(List<Date> values) {
			addCriterionForJDBCDate("hdate not in", values, "hdate");
			return (Criteria) this;
		}

		public Criteria andHdateBetween(Date value1, Date value2) {
			addCriterionForJDBCDate("hdate between", value1, value2, "hdate");
			return (Criteria) this;
		}

		public Criteria andHdateNotBetween(Date value1, Date value2) {
			addCriterionForJDBCDate("hdate not between", value1, value2, "hdate");
			return (Criteria) this;
		}

		public Criteria andStatusIsNull() {
			addCriterion("status is null");
			return (Criteria) this;
		}

		public Criteria andStatusIsNotNull() {
			addCriterion("status is not null");
			return (Criteria) this;
		}

		public Criteria andStatusEqualTo(String value) {
			addCriterion("status =", value, "status");
			return (Criteria) this;
		}

		public Criteria andStatusNotEqualTo(String value) {
			addCriterion("status <>", value, "status");
			return (Criteria) this;
		}

		public Criteria andStatusGreaterThan(String value) {
			addCriterion("status >", value, "status");
			return (Criteria) this;
		}

		public Criteria andStatusGreaterThanOrEqualTo(String value) {
			addCriterion("status >=", value, "status");
			return (Criteria) this;
		}

		public Criteria andStatusLessThan(String value) {
			addCriterion("status <", value, "status");
			return (Criteria) this;
		}

		public Criteria andStatusLessThanOrEqualTo(String value) {
			addCriterion("status <=", value, "status");
			return (Criteria) this;
		}

		public Criteria andStatusLike(String value) {
			addCriterion("status like", value, "status");
			return (Criteria) this;
		}

		public Criteria andStatusNotLike(String value) {
			addCriterion("status not like", value, "status");
			return (Criteria) this;
		}

		public Criteria andStatusIn(List<String> values) {
			addCriterion("status in", values, "status");
			return (Criteria) this;
		}

		public Criteria andStatusNotIn(List<String> values) {
			addCriterion("status not in", values, "status");
			return (Criteria) this;
		}

		public Criteria andStatusBetween(String value1, String value2) {
			addCriterion("status between", value1, value2, "status");
			return (Criteria) this;
		}

		public Criteria andStatusNotBetween(String value1, String value2) {
			addCriterion("status not between", value1, value2, "status");
			return (Criteria) this;
		}

		public Criteria andFixIsNull() {
			addCriterion("fix is null");
			return (Criteria) this;
		}

		public Criteria andFixIsNotNull() {
			addCriterion("fix is not null");
			return (Criteria) this;
		}

		public Criteria andFixEqualTo(Integer value) {
			addCriterion("fix =", value, "fix");
			return (Criteria) this;
		}

		public Criteria andFixNotEqualTo(Integer value) {
			addCriterion("fix <>", value, "fix");
			return (Criteria) this;
		}

		public Criteria andFixGreaterThan(Integer value) {
			addCriterion("fix >", value, "fix");
			return (Criteria) this;
		}

		public Criteria andFixGreaterThanOrEqualTo(Integer value) {
			addCriterion("fix >=", value, "fix");
			return (Criteria) this;
		}

		public Criteria andFixLessThan(Integer value) {
			addCriterion("fix <", value, "fix");
			return (Criteria) this;
		}

		public Criteria andFixLessThanOrEqualTo(Integer value) {
			addCriterion("fix <=", value, "fix");
			return (Criteria) this;
		}

		public Criteria andFixIn(List<Integer> values) {
			addCriterion("fix in", values, "fix");
			return (Criteria) this;
		}

		public Criteria andFixNotIn(List<Integer> values) {
			addCriterion("fix not in", values, "fix");
			return (Criteria) this;
		}

		public Criteria andFixBetween(Integer value1, Integer value2) {
			addCriterion("fix between", value1, value2, "fix");
			return (Criteria) this;
		}

		public Criteria andFixNotBetween(Integer value1, Integer value2) {
			addCriterion("fix not between", value1, value2, "fix");
			return (Criteria) this;
		}

		public Criteria andHoursIsNull() {
			addCriterion("hours is null");
			return (Criteria) this;
		}

		public Criteria andHoursIsNotNull() {
			addCriterion("hours is not null");
			return (Criteria) this;
		}

		public Criteria andHoursEqualTo(BigDecimal value) {
			addCriterion("hours =", value, "hours");
			return (Criteria) this;
		}

		public Criteria andHoursNotEqualTo(BigDecimal value) {
			addCriterion("hours <>", value, "hours");
			return (Criteria) this;
		}

		public Criteria andHoursGreaterThan(BigDecimal value) {
			addCriterion("hours >", value, "hours");
			return (Criteria) this;
		}

		public Criteria andHoursGreaterThanOrEqualTo(BigDecimal value) {
			addCriterion("hours >=", value, "hours");
			return (Criteria) this;
		}

		public Criteria andHoursLessThan(BigDecimal value) {
			addCriterion("hours <", value, "hours");
			return (Criteria) this;
		}

		public Criteria andHoursLessThanOrEqualTo(BigDecimal value) {
			addCriterion("hours <=", value, "hours");
			return (Criteria) this;
		}

		public Criteria andHoursIn(List<BigDecimal> values) {
			addCriterion("hours in", values, "hours");
			return (Criteria) this;
		}

		public Criteria andHoursNotIn(List<BigDecimal> values) {
			addCriterion("hours not in", values, "hours");
			return (Criteria) this;
		}

		public Criteria andHoursBetween(BigDecimal value1, BigDecimal value2) {
			addCriterion("hours between", value1, value2, "hours");
			return (Criteria) this;
		}

		public Criteria andHoursNotBetween(BigDecimal value1, BigDecimal value2) {
			addCriterion("hours not between", value1, value2, "hours");
			return (Criteria) this;
		}

		public Criteria andStimeIsNull() {
			addCriterion("stime is null");
			return (Criteria) this;
		}

		public Criteria andStimeIsNotNull() {
			addCriterion("stime is not null");
			return (Criteria) this;
		}

		public Criteria andStimeEqualTo(Date value) {
			addCriterionForJDBCTime("stime =", value, "stime");
			return (Criteria) this;
		}

		public Criteria andStimeNotEqualTo(Date value) {
			addCriterionForJDBCTime("stime <>", value, "stime");
			return (Criteria) this;
		}

		public Criteria andStimeGreaterThan(Date value) {
			addCriterionForJDBCTime("stime >", value, "stime");
			return (Criteria) this;
		}

		public Criteria andStimeGreaterThanOrEqualTo(Date value) {
			addCriterionForJDBCTime("stime >=", value, "stime");
			return (Criteria) this;
		}

		public Criteria andStimeLessThan(Date value) {
			addCriterionForJDBCTime("stime <", value, "stime");
			return (Criteria) this;
		}

		public Criteria andStimeLessThanOrEqualTo(Date value) {
			addCriterionForJDBCTime("stime <=", value, "stime");
			return (Criteria) this;
		}

		public Criteria andStimeIn(List<Date> values) {
			addCriterionForJDBCTime("stime in", values, "stime");
			return (Criteria) this;
		}

		public Criteria andStimeNotIn(List<Date> values) {
			addCriterionForJDBCTime("stime not in", values, "stime");
			return (Criteria) this;
		}

		public Criteria andStimeBetween(Date value1, Date value2) {
			addCriterionForJDBCTime("stime between", value1, value2, "stime");
			return (Criteria) this;
		}

		public Criteria andStimeNotBetween(Date value1, Date value2) {
			addCriterionForJDBCTime("stime not between", value1, value2, "stime");
			return (Criteria) this;
		}

		public Criteria andEtimeIsNull() {
			addCriterion("etime is null");
			return (Criteria) this;
		}

		public Criteria andEtimeIsNotNull() {
			addCriterion("etime is not null");
			return (Criteria) this;
		}

		public Criteria andEtimeEqualTo(Date value) {
			addCriterionForJDBCTime("etime =", value, "etime");
			return (Criteria) this;
		}

		public Criteria andEtimeNotEqualTo(Date value) {
			addCriterionForJDBCTime("etime <>", value, "etime");
			return (Criteria) this;
		}

		public Criteria andEtimeGreaterThan(Date value) {
			addCriterionForJDBCTime("etime >", value, "etime");
			return (Criteria) this;
		}

		public Criteria andEtimeGreaterThanOrEqualTo(Date value) {
			addCriterionForJDBCTime("etime >=", value, "etime");
			return (Criteria) this;
		}

		public Criteria andEtimeLessThan(Date value) {
			addCriterionForJDBCTime("etime <", value, "etime");
			return (Criteria) this;
		}

		public Criteria andEtimeLessThanOrEqualTo(Date value) {
			addCriterionForJDBCTime("etime <=", value, "etime");
			return (Criteria) this;
		}

		public Criteria andEtimeIn(List<Date> values) {
			addCriterionForJDBCTime("etime in", values, "etime");
			return (Criteria) this;
		}

		public Criteria andEtimeNotIn(List<Date> values) {
			addCriterionForJDBCTime("etime not in", values, "etime");
			return (Criteria) this;
		}

		public Criteria andEtimeBetween(Date value1, Date value2) {
			addCriterionForJDBCTime("etime between", value1, value2, "etime");
			return (Criteria) this;
		}

		public Criteria andEtimeNotBetween(Date value1, Date value2) {
			addCriterionForJDBCTime("etime not between", value1, value2, "etime");
			return (Criteria) this;
		}

		public Criteria andExtraIsNull() {
			addCriterion("extra is null");
			return (Criteria) this;
		}

		public Criteria andExtraIsNotNull() {
			addCriterion("extra is not null");
			return (Criteria) this;
		}

		public Criteria andExtraEqualTo(String value) {
			addCriterion("extra =", value, "extra");
			return (Criteria) this;
		}

		public Criteria andExtraNotEqualTo(String value) {
			addCriterion("extra <>", value, "extra");
			return (Criteria) this;
		}

		public Criteria andExtraGreaterThan(String value) {
			addCriterion("extra >", value, "extra");
			return (Criteria) this;
		}

		public Criteria andExtraGreaterThanOrEqualTo(String value) {
			addCriterion("extra >=", value, "extra");
			return (Criteria) this;
		}

		public Criteria andExtraLessThan(String value) {
			addCriterion("extra <", value, "extra");
			return (Criteria) this;
		}

		public Criteria andExtraLessThanOrEqualTo(String value) {
			addCriterion("extra <=", value, "extra");
			return (Criteria) this;
		}

		public Criteria andExtraLike(String value) {
			addCriterion("extra like", value, "extra");
			return (Criteria) this;
		}

		public Criteria andExtraNotLike(String value) {
			addCriterion("extra not like", value, "extra");
			return (Criteria) this;
		}

		public Criteria andExtraIn(List<String> values) {
			addCriterion("extra in", values, "extra");
			return (Criteria) this;
		}

		public Criteria andExtraNotIn(List<String> values) {
			addCriterion("extra not in", values, "extra");
			return (Criteria) this;
		}

		public Criteria andExtraBetween(String value1, String value2) {
			addCriterion("extra between", value1, value2, "extra");
			return (Criteria) this;
		}

		public Criteria andExtraNotBetween(String value1, String value2) {
			addCriterion("extra not between", value1, value2, "extra");
			return (Criteria) this;
		}
	}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table hihatu_worktbl
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public static class Criterion {
		private String condition;
		private Object value;
		private Object secondValue;
		private boolean noValue;
		private boolean singleValue;
		private boolean betweenValue;
		private boolean listValue;
		private String typeHandler;

		public String getCondition() {
			return condition;
		}

		public Object getValue() {
			return value;
		}

		public Object getSecondValue() {
			return secondValue;
		}

		public boolean isNoValue() {
			return noValue;
		}

		public boolean isSingleValue() {
			return singleValue;
		}

		public boolean isBetweenValue() {
			return betweenValue;
		}

		public boolean isListValue() {
			return listValue;
		}

		public String getTypeHandler() {
			return typeHandler;
		}

		protected Criterion(String condition) {
			super();
			this.condition = condition;
			this.typeHandler = null;
			this.noValue = true;
		}

		protected Criterion(String condition, Object value, String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.typeHandler = typeHandler;
			if (value instanceof List<?>) {
				this.listValue = true;
			} else {
				this.singleValue = true;
			}
		}

		protected Criterion(String condition, Object value) {
			this(condition, value, null);
		}

		protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.secondValue = secondValue;
			this.typeHandler = typeHandler;
			this.betweenValue = true;
		}

		protected Criterion(String condition, Object value, Object secondValue) {
			this(condition, value, secondValue, null);
		}
	}

	/**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table hihatu_worktbl
     *
     * @mbg.generated do_not_delete_during_merge Sun Aug 07 13:16:00 JST 2022
     */
    public static class Criteria extends GeneratedCriteria {
        protected Criteria() {
            super();
        }
    }
}