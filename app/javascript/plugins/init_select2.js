import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  if ($('.select2')[0]) {
    $('.select2').select2({ width: '40%' });
  }
};

export { initSelect2 };
